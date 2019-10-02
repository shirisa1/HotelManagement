package com.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.model.Menu;
import com.hotel.service.MenuService;

@Controller
public class MenuController {
	@Autowired
	private MenuService menuService;
	
	
	
	@RequestMapping("/menu")
	public ModelAndView displayMenu(HttpServletRequest req, HttpServletResponse resp ) {
		ModelAndView mv  = new ModelAndView();
		List<Menu> listMenu = menuService.listMenu();
		mv.setViewName("menu");
		mv.addObject("listMenu", listMenu);
		return mv;
	}
	
	@RequestMapping(value ="searchMenu")
	public ModelAndView searchMenu(@RequestParam String keyword) {
		ModelAndView modelAndView =  new ModelAndView("search_Menu");
		List<Menu> result = menuService.searchMenu(keyword);
		modelAndView.addObject("menuresult",result);
		return modelAndView;		
	}
}
