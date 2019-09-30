package com.hotel.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.model.Customer;
import com.hotel.service.CustomerService;

@Controller
@SessionAttributes("thought")
public class CustomerController {

	@Autowired
	private CustomerService service;

	@RequestMapping("/login")
	public ModelAndView displayName(HttpServletRequest request, HttpServletResponse response ,HttpSession session) {

		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		session.setAttribute("thought", username);
		ModelAndView mv = new ModelAndView();

		List<Customer> listCustomers = service.listCustomers();
		mv.setViewName("login");
		mv.addObject("username", username);
		mv.addObject("password", password);
		mv.addObject("listCustomers", listCustomers);
		return mv;
	}

	@RequestMapping("/newCustomer")
	public String newCustomerForm(Map<String, Object> model) {

		model.put("customer", new Customer());
		return "new_customer";

	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		service.saveCustomer(customer);
		return "redirect:/login";

	}

	@RequestMapping(value = "/edit")
	public ModelAndView editCustomerForm(@RequestParam long id) {
		ModelAndView modelAndView = new ModelAndView("edit_customer");
		Customer customer = service.getCustomer(id);
		modelAndView.addObject("customer", customer);
		return modelAndView;

	}

	@RequestMapping(value = "/delete")
	public String deleteCustomerString(@RequestParam long id) {
		service.deleteCustomer(id);
		return "redirect:/login";
	}

	@RequestMapping(value ="search1")
	public ModelAndView searchCustomer(@RequestParam String keyword1) {
		ModelAndView modelAndView =  new ModelAndView("search");
		List<Customer> result = service.searchCustomers(keyword1);
		modelAndView.addObject("result",result);
		
		return modelAndView;
		
	}

	@RequestMapping(value ="/SignOut", method = RequestMethod.GET)
      public String logout(HttpSession session) {
    	  session.removeAttribute("username");
    	  session.removeAttribute("thought");
    	  session.removeValue("thought");
        return "redirect:/login";
      }
    
    
}
