package com.pizza.dao;

public class LoginCustomer extends PizzaCustomer {
	private String name;
	private String password;
	public LoginCustomer(int identity, String name, String password, String phone, String email, String name2,
			String password2) {
		super(identity, name, password, phone, email);
		name = name2;
		password = password2;
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
}
