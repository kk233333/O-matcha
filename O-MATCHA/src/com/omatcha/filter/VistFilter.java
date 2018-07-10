package com.omatcha.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class VistFilter implements Filter{

	public void destroy() {
		}

	public void doFilter(ServletRequest _request, ServletResponse _response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)_request;
		HttpServletResponse response = (HttpServletResponse)_response;
		HttpSession session = request.getSession();
		
		if(session != null){
			String username = (String)session.getAttribute("wusername");
			if(username !=null){
				//执行过滤器，执行下一条链
				chain.doFilter(_request, _response);
			}else{
				response.sendRedirect(request.getContextPath()+"/page/login.jsp");
			}
		}else{
			//非法请求
			response.sendRedirect(request.getContextPath()+"/page/login.jsp");
		}
	}

	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
