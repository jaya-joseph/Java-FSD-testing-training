package com.ust.SpringBoot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ust.SpringBoot.dao.Dao;

@Component
public class Service {
	
	Dao dao;
	
	@Autowired
	Service(Dao dao)
	{
		System.out.println("Service bean created");
		this.dao=dao;
	}
	
	public void save()
	{
		dao.create();
	}

}