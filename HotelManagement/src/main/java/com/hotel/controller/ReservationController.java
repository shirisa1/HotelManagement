package com.hotel.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hotel.model.Customer;
import com.hotel.service.CustomerService;

@Controller
public class ReservationController {
	@Autowired
	private CustomerService service;
	
	@RequestMapping(value = "/saveNewWhilePaying", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		service.saveCustomer(customer);
		return "redirect:/login";

	}

}
