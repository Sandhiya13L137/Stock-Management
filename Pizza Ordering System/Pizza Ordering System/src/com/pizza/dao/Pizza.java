package com.pizza.dao;

public class Pizza {
	private int identity;
	private String name;
	private String toppings;
	private String size;
	private String type;
	private double price;
	public Pizza(int identity, String name, String toppings, String size, String type, double price) {
		super();
		this.identity = identity;
		this.name = name;
		this.toppings = toppings;
		this.size = size;
		this.type = type;
		this.price = price;
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
	public String getToppings() {
		return toppings;
	}
	public void setToppings(String toppings) {
		this.toppings = toppings;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
}
