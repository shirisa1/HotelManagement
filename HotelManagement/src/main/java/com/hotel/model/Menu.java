package com.hotel.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Menu {
	
	
	@Id
	private long menuID;
	private String menuName;
	private String menuDetails;
	private double menuPrice;
	
	public long getMenuID() {
		return menuID;
	}
	public void setMenuID(long menuID) {
		this.menuID = menuID;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuDetails() {
		return menuDetails;
	}
	public void setMenuDetails(String menuDetails) {
		this.menuDetails = menuDetails;
	}
	public double getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(double menuPrice) {
		this.menuPrice = menuPrice;
	}
	
	public Menu() {}
	
	public Menu(long menuID, String menuName, String menuDetails, double menuPrice) {
		this.menuID = menuID;
		this.menuName = menuName;
		this.menuDetails = menuDetails;
		this.menuPrice = menuPrice;
	}
	
	
	
}