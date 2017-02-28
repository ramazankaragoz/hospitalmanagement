package com.ramazan.hospital.view.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ramazan.hospital.entity.entities.User;
import com.ramazan.hospital.view.core.ServiceImp;

@Controller
@RequestMapping(value="/register")
public class RegisterController extends ServiceImp{
	
	@RequestMapping(method=RequestMethod.GET)
	public String showRegister(Model model,User user)
	{
		return "register";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String doRegister(Model model,User user)
	{
		
		if(getUserServiceImp().insertUser(user))
		{
			model.addAttribute("registration", "Registration Successful");
		}
		else
		{
			model.addAttribute("registration", "Registration Failed");
		}		
		
		return "register";
	}

}
