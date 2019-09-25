package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.bean.Room;
import com.spring.dao.RoomDao;

@Service("roomService")
public class RoomServiceImpl implements RoomService {

	@Autowired
	private RoomDao roomDAO;

	@Transactional
	public List<Room> listAllRooms() {
		// TODO Auto-generated method stub
		return roomDAO.listAllRooms();
	}

	@Transactional
	public List<Room> listEmptyRooms() {
		// TODO Auto-generated method stub
		return roomDAO.listEmptyRooms();
	}

	@Transactional
	public List<Room> listReservedRooms() {
		// TODO Auto-generated method stub
		return roomDAO.listReservedRooms();
	}

	@Transactional
	public void UpdateRooms(Room room) {
		// TODO Auto-generated method stub
		roomDAO.UpdateRooms(room);
	}

}
