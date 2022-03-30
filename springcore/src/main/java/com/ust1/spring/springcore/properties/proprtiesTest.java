package com.ust1.spring.springcore.properties;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class proprtiesTest {

	public static void main(String[] args) {
		ApplicationContext ac= new ClassPathXmlApplicationContext("com/ust1/spring/springcore/properties/propertiesconfig.xml");
		CountriesAndLang cal=(CountriesAndLang) ac.getBean("cAndL");
		System.out.println(cal);
	}

}
