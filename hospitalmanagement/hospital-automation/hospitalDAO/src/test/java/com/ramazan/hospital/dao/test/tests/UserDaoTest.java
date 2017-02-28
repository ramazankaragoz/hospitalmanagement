package com.ramazan.hospital.dao.test.tests;



import static org.junit.Assert.*;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ramazan.hospital.dao.implement.UserDaoImp;
import com.ramazan.hospital.entity.entities.User;

@ActiveProfiles("dev")
@ContextConfiguration(locations = { "file:*/com/ramazan/hospital/dao/config/dao-context.xml",
		"file:*/com/ramazan/hospital/service/config/security-context.xml",
		"file:*/ramazan/hospital/entity/config/entity-context.xml",
		"file:*/ramazan/hospital/entity/config/service-context.xml",
		"classpath:com/ramazan/hospital/dao/test/config/datasource.xml" })
@RunWith(SpringJUnit4ClassRunner.class)
public class UserDaoTest {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	//Dummy test case
	@Test
	public void testUser()
	{
		Transaction tx=null;
		User user=new User("patient", "patient", "Ankara", "patient@gmail.com", "12345", "ROLE_USER", true, new Date());
		
		Session session=sessionFactory.getCurrentSession();
		
		tx=session.beginTransaction();
		session.save(user);
		tx.commit();
		session.close();
	}
	
}
