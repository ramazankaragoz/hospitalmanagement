package com.ramazan.hospital.dao.interfaces;

import java.util.List;

public interface UserDaoI <U>{

	public List<U> getUserList();
	public U getUserWithEmail(String email);
	public U getUserWithId(int id);
	public boolean deleteUser(int id);
	public boolean updateUser(int id);
	public boolean insertUser(U u);
	
}
