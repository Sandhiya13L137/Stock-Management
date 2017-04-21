package com.pizza.dao;

public class PizzaOwner {
	private int identity;
	private String name;
	private String password;
	private String userType;
	private String phoneNo;
	private String email;
	public PizzaOwner(int identity, String name, String password, String userType, String phoneNo, String email) {
		super();
		this.identity = identity;
		this.name = name;
		this.password = password;
		this.userType = userType;
		this.phoneNo = phoneNo;
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
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
