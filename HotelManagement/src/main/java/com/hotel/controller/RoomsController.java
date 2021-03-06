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
import com.hotel.model.Rooms;
import com.hotel.service.CustomerService;
import com.hotel.service.RoomsService;

@Controller
public class RoomsController {

	@Autowired
	private RoomsService roomService;

	@RequestMapping("/fetchRoom")
	public ModelAndView displayName(HttpServletRequest request, HttpServletResponse response ) {

		ModelAndView mv = new ModelAndView();

		List<Rooms> listRooms = roomService.listRooms();
		mv.setViewName("index");
		mv.addObject("listRooms", listRooms);
		return mv;
	}

	@RequestMapping(value ="searchRooms")
	public ModelAndView searchCustomer(@RequestParam String keyword) {
		ModelAndView modelAndView =  new ModelAndView("search_rooms");
		List<Rooms> result = roomService.searchRooms(keyword);
		modelAndView.addObject("roomresult",result);
		
		return modelAndView;
		
	}
	@RequestMapping(value = "/viewRoom")
	public ModelAndView viewRoomForm(@RequestParam long roomid) {
		ModelAndView modelAndView = new ModelAndView("view_room");
		Rooms roomdata = roomService.getRoom(roomid);		
		modelAndView.addObject("roomdata",roomdata);

		return modelAndView;

	}
	@RequestMapping(value = "/reserveRoom")
	public ModelAndView reserveRoomForm(@RequestParam long roomid,Map<String, Object> model) {
		ModelAndView modelAndView = new ModelAndView("reserve_room");
		model.put("customer", new Customer());
		Rooms roomdata = roomService.getRoom(roomid);		
		modelAndView.addObject("roomdata",roomdata);

		return modelAndView;

	}

    
    
}
