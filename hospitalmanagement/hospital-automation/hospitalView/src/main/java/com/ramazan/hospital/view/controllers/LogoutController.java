package com.ramazan.hospital.view.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/logout")
public class LogoutController {
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String logOutGet()
	{
		return "login";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String logOut()
	{
		return "login";
	}

}
