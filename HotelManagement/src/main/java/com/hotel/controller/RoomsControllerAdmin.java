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
public class RoomsControllerAdmin {

	@Autowired
	private RoomsService roomServiceAdmin;

//	@RequestMapping("/fetchRoom")
//	public ModelAndView displayName(HttpServletRequest request, HttpServletResponse response ) {
//
//		ModelAndView mv = new ModelAndView();
//
//		List<Rooms> listRooms = roomService.listRooms();
//		mv.setViewName("index");
//		mv.addObject("listRooms", listRooms);
//		return mv;
//	}

	@RequestMapping("/newRoomAdmin")
	public String newRoomForm(Map<String, Object> model) {

		model.put("roomtoadd", new Rooms());
		return "new_room_admin";

	}
//
	@RequestMapping(value = "/saveEditedRoom", method = RequestMethod.POST)
	public String saveRooms(@ModelAttribute("customer") Rooms room) {
		roomServiceAdmin.saveRoomsAdmin(room);
		return "redirect:/searchRoomsAdmin";

	}
//
	@RequestMapping(value = "/editRoom")
	public ModelAndView editCustomerForm(@RequestParam long roomid) {
		ModelAndView modelAndView = new ModelAndView("edit_room");
		Rooms room = roomServiceAdmin.getRoomAdmin(roomid);
		modelAndView.addObject("roomtoedit", room);
		return modelAndView;

	}

	@RequestMapping(value = "/deleteRoomAdmin")
	public String deleteCustomerString(@RequestParam long roomid) {
		roomServiceAdmin.deleteRoomsAdmin(roomid);
		return "redirect:/searchRoomsAdmin";
	}

	@RequestMapping(value ="searchRoomsAdmin")
	public ModelAndView searchCustomer() {
		ModelAndView modelAndView =  new ModelAndView("search_rooms_admin");
		List<Rooms> listRoomsAdmin = roomServiceAdmin.listRoomsAdmin();
		modelAndView.addObject("roomresultadmin",listRoomsAdmin);
		
		return modelAndView;
		
	}




    
    
}
