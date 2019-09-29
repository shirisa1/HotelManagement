package com.hotel.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;


import com.hotel.model.Rooms;

public interface RoomsDao extends CrudRepository<Rooms, Long> {
	
	
	@Query(value = "SELECT c FROM Rooms c WHERE c.roomclass LIKE '%' || :keyword || '%'"
			+ " AND c.roomstatus LIKE 'empty'")
			
	public List<Rooms> searchRooms(@Param("keyword") String keyword );

}
