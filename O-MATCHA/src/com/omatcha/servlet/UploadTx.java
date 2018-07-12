package com.omatcha.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadTx extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("csdadsadsadsad");
		//确定上传位置
		String path = this.getServletContext().getRealPath("/wangwei/tx");
		File file = new File(path);
		if(!file.exists()&&!file.isDirectory()){
			file.mkdir();
		}
	
		//使用apache文件上传组件处理文件上传步骤
		//1.创建一个DiskFileItemFactory
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//2.创建文件上传解析器
		ServletFileUpload upload = new ServletFileUpload(factory);
		//3.解决上传文件名的中文乱码
		upload.setHeaderEncoding("utf-8");
		//4.判断提交上来的数据是否是上传表单数据
		if(!ServletFileUpload.isMultipartContent(req)){
			return;
		}
		//5.使用ServletFileUpload解析器解析上传数据，解析结果返回一个集合
		try {
			List<FileItem> list = upload.parseRequest(req);
			System.out.println(list.size());
			for (FileItem fileItem : list) {
				//如果fileItem中封装的是普通输入项的数据
				if(fileItem.isFormField()){
					String name = fileItem.getFieldName();
					//解决普通输入项的数据的中文乱码
					String value = fileItem.getString("utf-8");
					System.out.println(name+"="+value);
				}else{
					//如果fileItem是封装的上传文件
					String fileName = fileItem.getName();
					System.out.println(fileName);
					if(fileName ==null ||fileName.trim().equals("")){
						continue;
					}
					//fileName只取是文件名
					fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
					
					LoginServlet loginuser = new LoginServlet();
					loginuser.user.setPortrait(fileName);
					
					
					
					//获取fileItem的上传文件输入流
					InputStream in = fileItem.getInputStream();
					FileOutputStream out = new FileOutputStream(path+"\\"+fileName);
					byte[] buffer = new byte[1024];
					int len = 0;
					while((len=in.read(buffer))>0){
						out.write(buffer,0,len);
					}
					in.close();
					out.close();
					fileItem.delete();
					
					HttpSession session = req.getSession(true);
					session.setAttribute("Portrait", loginuser.user.getPortrait());
				}
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
	
}
}