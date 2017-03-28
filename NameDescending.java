package com.stock.dao.cmp;

import com.stock.dao.Item;
import java.util.Comparator;

public class NameDescending implements Comparator<Item> {

	@Override
	public int compare(Item item1, Item item2) {
		return item2.getName().compareTo(item1.getName());
	}
	
}
