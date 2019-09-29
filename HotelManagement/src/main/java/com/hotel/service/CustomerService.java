package com.hotel.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.dao.CustomerDao;
import com.hotel.model.Customer;

@Service
public class CustomerService {
	@Autowired
	private CustomerDao customerDao;
	
	public List<Customer> listCustomers(){
		return (List<Customer>) customerDao.findAll();
		
	}
	public void saveCustomer(Customer customer) {
		customerDao.save(customer);
		
	}
	public Customer getCustomer(long id) {
		Optional<Customer> result = customerDao.findById(id);
		return result.get();
	}
	public void deleteCustomer(long id) {
		customerDao.deleteById(id);
		
	}
	public List<Customer> searchCustomers(String keyword1) {
		return customerDao.search(keyword1);
		
	}
}
