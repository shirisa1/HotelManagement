package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.bean.Room;
import com.spring.service.RoomService;

@Controller
@ComponentScan("com.spring.service")
public class RoomController {

	@Autowired
	private RoomService roomService;
	
	@RequestMapping(value = "/lists", method = RequestMethod.POST)
	public ModelAndView roomList(@ModelAttribute("command") Room room, BindingResult result) {
		List<Room> rooms = roomService.listAllRooms();
		return new ModelAndView("redirect:/list.html");
	}
	
	
}
