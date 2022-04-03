package com.ust1.spring.springadvanced.injecting.interfaces.annotations;

import org.springframework.stereotype.Component;

@Component("x")
public class OrderDAOImpl2 implements OrderDAO {

	@Override
	public void createOrder() {
		System.out.println("inside OrderDAOImpl2 createOrder()");

	}
}