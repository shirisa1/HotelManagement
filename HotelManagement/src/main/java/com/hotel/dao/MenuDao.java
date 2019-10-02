package com.hotel.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.hotel.model.Menu;
import com.hotel.model.Orders;




public interface MenuDao extends CrudRepository<Menu, Long>{
	@Query(value = "SELECT c FROM Menu c WHERE c.menuID LIKE '%' || :keywordmenu || '%'")
	public List<Menu> searchMenu(@Param("keywordmenu") String keywordmenu);

}