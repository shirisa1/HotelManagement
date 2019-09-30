package com.spring.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.MenuDao;
import com.spring.model.MenuItem;

@Service
public class MenuService {

	@Autowired
	private MenuDao menudao;
	
	public List<MenuItem> listMenu(){
		return (List<MenuItem>) menudao.findAll();
	}
	
	public void saveMenu(MenuItem m) {
		menudao.save(m);
	}
	
	public MenuItem getMenu(Long id) {
		Optional <MenuItem> result = menudao.findById(id);
		return result.get();
	}
	
	public void deleteMenu(Long id) {
		menudao.deleteById(id);
	}
	public List<MenuItem> searchMenu(String keywordmenu){
		return menudao.ListMenu(keywordmenu);
	}
	
}
