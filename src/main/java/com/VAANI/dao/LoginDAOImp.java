package com.VAANI.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VAANI.model.LoginVO;

@Repository
public class LoginDAOImp implements LoginDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	public void insertLogin(LoginVO loginVO)
		{
			try
				{
					 Session session=sessionFactory.openSession();
					 
					 Transaction transaction=session.beginTransaction();
					 
					 session.save(loginVO);
					 
					 transaction.commit();
					 
					 session.close();
				}
			catch(Exception ex)
				{
					ex.printStackTrace();
				} 
		}
	public List<LoginVO> checkUser(LoginVO loginVO)
	{
		List<LoginVO> ls=new ArrayList<LoginVO>();
		try
		{
			Session session=sessionFactory.openSession();
			 
			 Transaction transaction=session.beginTransaction();
			 
			 Query q=session.createQuery("from LoginVO where username='"+loginVO.getUsername()+"'");
			 
			 ls=q.list();
			 
			 transaction.commit();
			 
			 session.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return ls;
	}
}
