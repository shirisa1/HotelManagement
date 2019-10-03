package com.hotel.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.dao.MenuDao;
import com.hotel.model.Menu;

@Service
public class MenuService {

	
	@Autowired
	private MenuDao menuDao;
	
	public List<Menu> listMenu(){
		return(List<Menu>) menuDao.findAll();
	}

	public void saveMenu(Menu m) {
		menuDao.save(m);
	}
	
	public Menu getMenu(Long id) {
		Optional <Menu> result = menuDao.findById(id);
		return result.get();
	}
	
	public void deleteMenu(Long id) {
		menuDao.deleteById(id);
	}
	public List<Menu> searchMenu(String keywordmenu){
		return menuDao.searchMenu(keywordmenu);
	}
	
}
