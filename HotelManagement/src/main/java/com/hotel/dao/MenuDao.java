package com.hotel.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.hotel.model.Menu;



public interface MenuDao extends CrudRepository<Menu, Long>{
	@Query(value = "SELECT *FROM Menu")
	public List<Menu> ListMenu(@Param("keywordmenu") String keywordmenu );

}
