package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.bean.Room;

@Repository("RoomDao")
public class RoomDaoImpl implements RoomDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Room> listAllRooms() {
		return sessionFactory.getCurrentSession().createCriteria(Room.class).list();

	}

	public List<Room> listEmptyRooms() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Room> listReservedRooms() {
		// TODO Auto-generated method stub
		return null;
	}

	public void UpdateRooms(Room room) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(room);
	}
}
