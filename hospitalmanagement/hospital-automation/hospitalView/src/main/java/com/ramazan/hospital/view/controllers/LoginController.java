package com.ramazan.hospital.view.controllers;

import java.security.Principal;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ramazan.hospital.entity.entities.User;
import com.ramazan.hospital.view.core.ServiceImp;

@Controller
@RequestMapping(value="/login")
public class LoginController extends ServiceImp{

	
	@RequestMapping(method=RequestMethod.GET)
	public String showLoginPage(User user)
	{	
		return "login";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String registerLoginPage(User user)
	{
		
		return "login";
	}
	
}
