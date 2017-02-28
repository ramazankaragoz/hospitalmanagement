package com.ramazan.hospital.dao.implement;

import java.util.List;


import org.hibernate.HibernateException;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.ramazan.hospital.dao.core.BaseDao;
import com.ramazan.hospital.dao.interfaces.UserDaoI;
import com.ramazan.hospital.entity.entities.User;


@Component
public class UserDaoImp extends BaseDao implements UserDaoI<User>{
	
	public UserDaoImp() {
		System.out.println("Hello I'am user dao");
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

	
	@Override
	public boolean insertUser(User user) {
		
		try
		{
			getSession().save(user);
			return true;
		}
		catch(HibernateException e)
		{
			
			e.printStackTrace();
			System.out.println(e.getMessage());
			return false;
		}
				
	}


}
