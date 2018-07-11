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
	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("image/jpeg");
		resp.setHeader("Cache-Control", "no-cache");
		resp.setHeader("Pragma", "No-cache");
		resp.setDateHeader("Expires", 0L);
		int width = 80;
		int height = 30;
		BufferedImage image = new BufferedImage(width, height, 1);
		Graphics g = image.getGraphics();
		Random random = new Random();
		RandomColor randcolor =new RandomColor();
		int [] col =randcolor.getRandColorCode();
		g.setColor(new Color(col[0],col[1],col[2]));
		g.fillRect(0, 0, width, height);
		g.setFont(new Font("Arial", 0, 25));
		g.setColor(new Color(col[0],col[1],col[2]));
		for (int i = 0; i < 155; i++) {
			int x = random.nextInt(width + 100);
			int y = random.nextInt(height + 100);
			int xl = random.nextInt(10);
			int yl = random.nextInt(12);
			g.drawOval(x, y, x + xl, y + yl);
		}
		String code = req.getParameter("code");
		String sRand = code;
		for (int i = 0; i < sRand.length(); i++) {
			String rand = sRand.substring(i, i + 1);
			g.setColor(new Color(20 + random.nextInt(110), 20 + random
					.nextInt(110), 20 + random.nextInt(110)));
			g.drawString(rand, 14 * i + 5, 25);
		}
		g.dispose();
		javax.servlet.ServletOutputStream imageOut = resp.getOutputStream();
		JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(imageOut);
		encoder.encode(image);
		
	}
	
	

}

