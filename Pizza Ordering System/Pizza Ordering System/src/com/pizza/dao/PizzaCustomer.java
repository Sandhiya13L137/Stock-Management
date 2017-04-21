package com.pizza.dao;

public class PizzaCustomer {
	private int identity;
	private String name;
	private String password;
	private String phone;
	private String email;
	public PizzaCustomer(int identity, String name, String password, String phone, String email) {
		super();
		this.identity = identity;
		this.name = name;
		this.password = password;
		this.phone = phone;
		this.email = email;
	}
	public int getIdentity() {
		return identity;
	}
	public void setIdentity(int identity) {
		this.identity = identity;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
