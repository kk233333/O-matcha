package com.omatcha.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

public class ShoppingServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
				HttpSession ss=req.getSession();
			String address =req.getParameter("dizhi");
			ss.setAttribute("address", address);
			String Consignee =req.getParameter("shouname");
			ss.setAttribute("Consignee", Consignee);
			String Consigneephone =req.getParameter("shounumber");
			ss.setAttribute("Consigneephone", Consigneephone);
			String Reservations =req.getParameter("yuyuename");
			ss.setAttribute("Reservations", Reservations);
			String Reservationsphone =req.getParameter("yuyuenumber");
			ss.setAttribute("Reservationsphone", Reservationsphone);
			String time =req.getParameter("time");
			ss.setAttribute("time", time);
			String Remarks =req.getParameter("beizhu");
			ss.setAttribute("Remarks", Remarks);
			String money =req.getParameter("money");
			ss.setAttribute("money", money);
			String Paymentmethod =req.getParameter("fangshi");
			ss.setAttribute("Paymentmethod", Paymentmethod);
			String abc ="ok";
			//req.getRequestDispatcher("page/invoice.jsp").forward(req,resp);
			//resp.sendRedirect("/O-MATCHA/page/invoice.jsp");
			ObjectMapper om = new ObjectMapper();
			om.writeValue(resp.getWriter(), abc);
			
			
			List list =new ArrayList();
			//list=(List)ss.getAttribute("list");
			
			System.out.println(req.getParameter("onemoney"));
			System.out.println(Paymentmethod);
			
	}

}
