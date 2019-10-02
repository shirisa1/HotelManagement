package com.hotel.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.repository.CrudRepository;

import com.hotel.model.Orders;

public interface OrdersDao extends CrudRepository<Orders ,Long>{
	
	@Query(value = "SELECT c FROM Orders c WHERE c.orderid LIKE '%' || :keyword2 || '%'")
	public List<Orders> searchOrders(@Param("keyword2") String keyword2);
	

}
