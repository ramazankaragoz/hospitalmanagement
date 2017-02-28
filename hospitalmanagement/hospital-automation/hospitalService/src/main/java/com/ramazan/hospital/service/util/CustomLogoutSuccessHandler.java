package com.ramazan.hospital.service.util;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

public class CustomLogoutSuccessHandler implements LogoutSuccessHandler{

	@Override
	public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {
		
		
		if (authentication != null && authentication.getDetails() != null) 
		{
			try 
			{
				request.getSession().invalidate();
				System.out.println("User Successfully Logout");
				
			} catch (Exception e) 
			{
				e.printStackTrace();
			}
		}

		response.setStatus(HttpServletResponse.SC_OK);
		// redirect to login
		response.sendRedirect("login");
		
	}

}
