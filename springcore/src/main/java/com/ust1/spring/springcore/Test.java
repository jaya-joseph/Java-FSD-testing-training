package com.ust1.spring.springcore;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx=new ClassPathXmlApplicationContext("config.xml");
		Employee x=(Employee) ctx.getBean("emp");
		System.out.println("Employee ID:"+x.getId());
		System.out.println("Employee Name:"+x.getName());

	}

}
