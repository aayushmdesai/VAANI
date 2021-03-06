package com.VAANI.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.VAANI.dao.*;
import com.VAANI.model.*;

@Service
public class RegService {
	
	@Autowired
	RegDAO regDAO;
	
	@Transactional
	public void insertRegister(RegVO regVO){
		regDAO.insertRegister(regVO);
	}
	

}
