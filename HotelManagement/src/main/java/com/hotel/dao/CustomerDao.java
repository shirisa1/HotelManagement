package com.hotel.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.hotel.model.Customer;

public interface CustomerDao extends CrudRepository<Customer, Long> {
	
	@Query(value = "SELECT c FROM Customer c WHERE c.name LIKE '%' || :keyword1 || '%'"
            + " OR c.email LIKE '%' || :keyword1 || '%'"
            + " OR c.address LIKE '%' || :keyword1 || '%'")
	public List<Customer> search(@Param("keyword1") String keyword1);

}
