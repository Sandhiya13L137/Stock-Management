package com.pizza.dao;

public class LoginOwner extends PizzaOwner {
	private String name;
	private String password;
	public LoginOwner(int identity, String name, String password, String userType, String phoneNo, String email,
			String name2, String password2) {
		super(identity, name, password, userType, phoneNo, email);
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
