package com.expense.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.DispatcherServlet;

public class SpringDispatcherServlet extends DispatcherServlet {
	
	private static final Logger log = Logger.getLogger(SpringDispatcherServlet.class);
	
	protected void init(HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) throws ServletException,
			IOException {
		System.out.println(getServletContext());
	}

	
	protected void service(HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) throws ServletException,
			IOException {
		
		httpServletRequest.setCharacterEncoding("UTF-8");
		super.service(httpServletRequest, httpServletResponse);
	}
}
