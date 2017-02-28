package com.ramazan.hospital.service.interfaces;

import java.util.List;


public interface UserServiceI <U>{

	public List<U> getUserList();
	public U getUserWithEmail(String email);
	public U getUserWithId(int id);
	public boolean deleteUser(int id);
	public boolean updateUser(int id);
	public boolean insertUser(U u);
	
}
