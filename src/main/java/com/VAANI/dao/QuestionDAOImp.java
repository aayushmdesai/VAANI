package com.VAANI.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VAANI.model.*;

@Repository
public class QuestionDAOImp implements QuestionDAO{
	@Autowired
	SessionFactory sessionFactory;

	public void insertQuestion(QuestionVO questionVO)
	{
		try
			{
				 Session session=sessionFactory.openSession();
				 Transaction transaction=session.beginTransaction();
				 session.save(questionVO);
				 transaction.commit();
				 session.close();
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			} 
	}
}