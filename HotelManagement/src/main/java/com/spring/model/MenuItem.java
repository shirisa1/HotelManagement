package com.spring.model;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class MenuItem {
	
	
	@Id
	private int menuID;
	private String menuName;
	private int menuPrice;

	public int getMenuID() {
		return menuID;
	}

	public void setMenuID(int menuID) {
		this.menuID = menuID;
	}
	
	public int getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

}
