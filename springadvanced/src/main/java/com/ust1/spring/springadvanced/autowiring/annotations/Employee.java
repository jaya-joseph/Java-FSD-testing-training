package com.ust1.spring.springadvanced.autowiring.annotations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class Employee {
	
	private Address address;

	public Address getAddress() {
		return address;
	}

	@Autowired(required=false)
	@Qualifier("address5")
	public void setAddress(Address address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Employee [address=" + address + "]";
	}
}
