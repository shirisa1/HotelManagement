package com.spring.dao;

import java.util.List;

import com.spring.bean.Room;

public interface RoomDao {

	public List<Room> listAllRooms();

	public List<Room> listEmptyRooms();

	public List<Room> listReservedRooms();

	public void UpdateRooms(Room room);
}
