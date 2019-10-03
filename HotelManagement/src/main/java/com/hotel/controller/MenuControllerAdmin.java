package com.hotel.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.model.Customer;
import com.hotel.model.Menu;
import com.hotel.service.MenuService;


@Controller
public class MenuControllerAdmin {

	@Autowired
	private MenuService menuService;
	
	
	
	@RequestMapping(value ="/newMenuAdmin")
	public String AddMenu(Map<String,Object>model) {
		model.put("newItem", new Menu());
		return "new_menu_item";
	}
	
	@RequestMapping(value ="/saveMenu", method = RequestMethod.POST)
	public String SaveMenu (Menu menu) {
		menuService.saveMenu(menu);
		return "redirect:/menufront";
	}
	
	@RequestMapping(value ="/deleteMenu")
	public String deleteMenu(@RequestParam long menuID) {
		menuService.deleteMenu(menuID);
		return "redirect:/menufront";
	}
	
	
	@RequestMapping(value ="/editMenu")
	public ModelAndView editMenu(@RequestParam long menuID) {
		ModelAndView modelAndView = new ModelAndView("edit_menu");
		Menu menu = menuService.getMenu(menuID);
		modelAndView.addObject("editedItem", menu);
		return modelAndView;
	}
	
	@RequestMapping(value ="searchMenu")
	public ModelAndView searchMenu(@RequestParam String keywordmenu) {
		ModelAndView modelAndView =  new ModelAndView("menuAdmin");
		List<Menu> result = menuService.searchMenu(keywordmenu);
		modelAndView.addObject("menuresult",result);	
		return modelAndView;
	}
	@RequestMapping("/menufront")
	public ModelAndView displayNameMenu(HttpServletRequest request, HttpServletResponse response ) {

		ModelAndView mev = new ModelAndView();

		List<Menu> listMenu = menuService.listMenu();
		mev.setViewName("MenuAdmin");
		
		mev.addObject("listMenu", listMenu);
		return mev;
	}
	
}
