package com.omatcha.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
/***
 * 字符集过滤器
 * @author qingxiping
 *
 */
public class CharsetFilter implements Filter{

	public void destroy() {
		
	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html,charset=utf-8");
		chain.doFilter(req, resp);
	}

	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
