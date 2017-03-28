package com.stock.dao;

public class Item {
	private String identity;
	private String name;
	private int quantityInStock;
	private double maximumRetailPrice;
	private double discount;
	private String vendor;
	private String manufacturingDate;
	private String expiryDate;
	public Item(String identity, String name, int quantityInStock, double maximumRetailPrice, double discount,
			String vendor, String manufacturingDate, String expiryDate) {
		this.identity = identity;
		this.name = name;
		this.quantityInStock = quantityInStock;
		this.maximumRetailPrice = maximumRetailPrice;
		this.discount = discount;
		this.vendor = vendor;
		this.manufacturingDate = manufacturingDate;
		this.expiryDate = expiryDate;
	}
	public String getIdentity() {
		return identity;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQuantityInStock() {
		return quantityInStock;
	}
	public void setQuantityInStock(int quantityInStock) {
		this.quantityInStock = quantityInStock;
	}
	public double getMaximumRetailPrice() {
		return maximumRetailPrice;
	}
	public void setMaximumRetailPrice(double maximumRetailPrice) {
		this.maximumRetailPrice = maximumRetailPrice;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public String getVendor() {
		return vendor;
	}
	public void setVendor(String vendor) {
		this.vendor = vendor;
	}
	public String getManufacturingDate() {
		return manufacturingDate;
	}
	public void setManufacturingDate(String manufacturingDate) {
		this.manufacturingDate = manufacturingDate;
	}
	public String getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}
}
