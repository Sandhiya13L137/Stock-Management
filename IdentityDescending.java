package com.stock.dao.cmp;

import com.stock.dao.Item;
import java.util.Comparator;

public class IdentityDescending implements Comparator<Item> {

	@Override
	public int compare(Item item1, Item item2) {
		return item2.getIdentity().compareTo(item1.getIdentity());
	}
	
}
