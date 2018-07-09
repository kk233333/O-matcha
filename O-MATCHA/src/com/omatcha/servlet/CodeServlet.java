package com.omatcha.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omatcha.util.RandomColor;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class CodeServlet extends HttpServlet{
	char[] chars = {
		'1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G'
	};
	int width = 60;
	int height = 20;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//构造一个带有缓冲的图形形象
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		//获取画笔
		Graphics g = image.getGraphics();
		//绘制背景颜色
		g.setColor(new Color(245,245,245));
		g.fillRect(0, 0, width, height);
		//绘制边框
		g.setColor(new Color(128,126,126));
		g.drawRect(0, 0, width-1, height-1);
		//产生4位数的随机码
		StringBuffer sb = new StringBuffer();
		Random random = new Random();
		for (int i = 0; i < 4; i++) {
			sb.append(chars[random.nextInt(chars.length)]);
		}
		//绘制随机码
		RandomColor randcolor =new RandomColor();
		int [] i =randcolor.getRandColorCode();
		g.setColor(new Color(i[0],i[1],i[2]));
		g.setFont(new Font("Axure Handwriting",Font.PLAIN,18));
		g.drawString(sb.substring(0,1), 8, 17);
		g.drawString(sb.substring(1,2), 20, 15);
		g.drawString(sb.substring(2,3), 35, 18);
		g.drawString(sb.substring(3,4), 45, 15);
		
		//释放画笔
		g.dispose();
		//向session中存储验证码
		HttpSession session = req.getSession(true);
		session.setAttribute("valicode", sb.toString());
		//对图形进行编码输出
		ServletOutputStream sos = resp.getOutputStream();
		//JPEGImageEncoder将图片按JPEG压缩，保存到sos中，针对jpeg.jpg设置输出编码
		JPEGImageEncoder je = JPEGCodec.createJPEGEncoder(sos);
		//将image进行编码
		je.encode(image);
	}
	
	

}

