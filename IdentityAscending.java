package com.stock.dao.cmp;

import com.stock.dao.Item;
import java.util.Comparator;

public class IdentityAscending implements Comparator<Item> {

	@Override
	public int compare(Item item1, Item item2) {
		return item1.getIdentity().compareTo(item2.getIdentity());
	}
	
}
