package com.hotel.model;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Rooms {
	
	@Id
	private long roomid;
	private String roomclass;
	private String roomstatus;
	private double price;
	private String roomfeatures;
	
	public Rooms() {
	}
	public Rooms(long roomid, String roomclass, String roomstatus, double price, String roomfeatures) {
		this.roomid = roomid;
		this.roomclass = roomclass;
		this.roomstatus = roomstatus;
		this.price = price;
		this.roomfeatures= roomfeatures;
	}
	public String getRoomfeatures() {
		return roomfeatures;
	}
	public void setRoomfeatures(String roomfeatures) {
		this.roomfeatures = roomfeatures;
	}
	public long getRoomid() {
		return roomid;
	}
	public void setRoomid(long roomid) {
		this.roomid = roomid;
	}
	public String getRoomclass() {
		return roomclass;
	}
	public void setRoomclass(String roomclass) {
		this.roomclass = roomclass;
	}
	public String getRoomstatus() {
		return roomstatus;
	}
	public void setRoomstatus(String roomstatus) {
		this.roomstatus = roomstatus;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	
}
