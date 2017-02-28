package com.ramazan.hospital.view.controllers;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ramazan.hospital.entity.entities.User;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showHome(User user,Principal principal)
	{
		return "home";
	}

}
