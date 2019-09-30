package com.spring.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.spring.model.MenuItem;


public interface MenuDao extends CrudRepository<MenuItem, Long>{
	@Query(value = "SELECT *FROM MenuItem")
	public List<MenuItem> ListMenu(@Param("keywordmenu") String keywordmenu );

}
