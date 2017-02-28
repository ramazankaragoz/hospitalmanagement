package com.ramazan.hospital.view.core;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ramazan.hospital.entity.entities.User;
import com.ramazan.hospital.service.interfaces.UserServiceI;

@Component
public abstract class ServiceImp {

	@Autowired
	private UserServiceI<User> userServiceImp;

	public UserServiceI<User> getUserServiceImp() {
		return userServiceImp;
	}
	
	
	
}
