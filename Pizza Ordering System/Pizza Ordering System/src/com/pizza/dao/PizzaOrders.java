package com.pizza.dao;

public class PizzaOrders {
	private int orderId;
	private String pizzaName;
	private String customerName;
	private String doorNo;
	private String street;
	private String city;
	private String state;
	private int pincode;
	public PizzaOrders(int orderId, String pizzaName, String customerName, String doorNo, String street, String city,
			String state, int pincode) {
		super();
		this.orderId = orderId;
		this.pizzaName = pizzaName;
		this.customerName = customerName;
		this.doorNo = doorNo;
		this.street = street;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getPizzaName() {
		return pizzaName;
	}
	public void setPizzaName(String pizzaName) {
		this.pizzaName = pizzaName;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	
}
