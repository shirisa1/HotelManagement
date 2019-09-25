package com.spring.service;

import java.util.List;

import com.spring.bean.Room;

public interface RoomService {

	public List<Room> listAllRooms();

	public List<Room> listEmptyRooms();

	public List<Room> listReservedRooms();

	public void UpdateRooms(Room room);
}
