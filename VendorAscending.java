package com.stock.dao.cmp;

import com.stock.dao.Item;
import java.util.Comparator;

public class VendorAscending implements Comparator<Item> {

	@Override
	public int compare(Item item1, Item item2) {
		return item1.getVendor().compareTo(item2.getVendor());
	}
	
}
