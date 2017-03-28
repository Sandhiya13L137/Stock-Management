package com.stock.dao.cmp;

import java.util.Comparator;

import com.stock.dao.Item;

public class MaximumRetailPriceAscending implements Comparator<Item> {

	@Override
	public int compare(Item item1, Item item2) {
		return Double.compare(item1.getMaximumRetailPrice(), item2.getMaximumRetailPrice());
	}
	
}
