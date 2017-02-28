package com.ramazan.hospital.view.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdministratorController {

	@RequestMapping("/administrator")
	public String administratorShow()
	{
		return "administrator";
	}
	
}
