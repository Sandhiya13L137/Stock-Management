package com.pizza.dao;

public class Address {
	private String doorNo;
	private String street;
	private String location;
	private String city;
	private int pincode;
	public Address(String doorNo, String street, String location, String city, int pincode) {
		super();
		this.doorNo = doorNo;
		this.street = street;
		this.location = location;
		this.city = city;
		this.pincode = pincode;
	}
	public String getDoorNo() {
		return doorNo;
	}
	public void setDoorNo(String doorNo) {
		this.doorNo = doorNo;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
}
