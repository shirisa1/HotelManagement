package com.hotel.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.dao.RoomsDao;
import com.hotel.model.Rooms;

@Service
public class RoomsService {
	@Autowired
	private RoomsDao roomsDao;
	
	public List<Rooms> listRooms(){
		return (List<Rooms>) roomsDao.findAll();
		
	}
	public void saveRooms(Rooms room) {
		roomsDao.save(room);
		
	}
	public Rooms getRoom(long id) {
		Optional<Rooms> result = roomsDao.findById(id);
		return result.get();
	}
	public void deleteRooms(long id) {
		roomsDao.deleteById(id);
		
	}
	public List<Rooms> searchRooms(String keyword) {
		return roomsDao.searchRooms(keyword);
		
	}
}
