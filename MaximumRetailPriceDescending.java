package com.stock.dao.cmp;

import java.util.Comparator;

import com.stock.dao.Item;

public class MaximumRetailPriceDescending implements Comparator<Item> {

	@Override
	public int compare(Item item1, Item item2) {
		return Double.compare(item2.getMaximumRetailPrice(), item1.getMaximumRetailPrice());
	}
	
}
