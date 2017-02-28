package com.ramazan.hospital.view.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PatientController {

	@RequestMapping("/patient")
	public String showPatient()
	{
		return "patient";
	}
	
}
