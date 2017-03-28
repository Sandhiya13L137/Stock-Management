package com.stock.dao.cmp;

import java.util.Comparator;

import com.stock.dao.Item;

public class QuantityInStockDescending implements Comparator<Item> {
	@Override
	public int compare(Item item1, Item item2) {
		return Integer.compare(item2.getQuantityInStock(), item1.getQuantityInStock());
	}
}
