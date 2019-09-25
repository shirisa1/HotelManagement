package com.spring.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Room {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	private int number;
	private boolean isOccupied;

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public boolean isOccupied() {
		return isOccupied;
	}

	public void setOccupied(boolean isOccupied) {
		this.isOccupied = isOccupied;
	}

	public Room() {

	}

	public Room(int iD, int number, boolean isOccupied) {
		super();
		ID = iD;
		this.number = number;
		this.isOccupied = isOccupied;
	}

	@Override
	public String toString() {
		return "Room [ID=" + ID + ", number=" + number + ", isOccupied=" + isOccupied + "]";
	}

}
