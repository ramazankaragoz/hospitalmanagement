package com.ramazan.hospital.service.implement;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ramazan.hospital.dao.interfaces.UserDaoI;
import com.ramazan.hospital.entity.entities.User;
import com.ramazan.hospital.service.interfaces.UserServiceI;


@Service
public class UserServiceImp implements UserServiceI<User>{

	@Autowired
	private UserDaoI<User> userDaoImp;
	
	public UserServiceImp()
	{
		System.out.println("Hello I am UserService Imp");
	}

	@Override
	public List<User> getUserList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserWithEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserWithId(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteUser(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateUser(int id) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Transactional
	@Override
	public boolean insertUser(User user) {
		

		user.setEnabled(true);
		
		
		if(userDaoImp.insertUser(user))
		{
			return true;
		}
		return false;
	}
	
}
