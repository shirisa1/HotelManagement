package com.hotel.controller;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.model.Menu;
import com.hotel.service.MenuService;


@Controller
public class MenuControllerAdmin {

	@Autowired
	private MenuService menuService;
	
	
	
	@RequestMapping(value ="/menuAdd")
	public String AddMenu(Map<String,Object>model) {
		model.put("newItem", new Menu());
		return "add_menu";
	}
	
	@RequestMapping(value ="/saveMenu")
	public String SaveMenu (@ModelAttribute("newItem") Menu menu) {
		menuService.saveMenu(menu);
		return "redirect:/searchMenu";
	}
	
	@RequestMapping(value ="/deleteMenu")
	public String deleteMenu(@RequestParam long menuID) {
		menuService.deleteMenu(menuID);
		return "redirect:/searchMenu";
	}
	
	
	@RequestMapping(value ="/editMenu")
	public ModelAndView editMenu(@RequestParam long menuID) {
		ModelAndView modelAndView = new ModelAndView("editMenu");
		Menu menu = menuService.getMenu(menuID);
		modelAndView.addObject("editedItem", menu);
		return modelAndView;
	}
	
	@RequestMapping(value ="searchMenu")
	public ModelAndView searchMenu(@RequestParam String keyword) {
		ModelAndView modelAndView =  new ModelAndView("menuAdmin");
		List<Menu> result = menuService.searchMenu(keyword);
		modelAndView.addObject("menuresult",result);
		
		return modelAndView;
		
	}
	
}
