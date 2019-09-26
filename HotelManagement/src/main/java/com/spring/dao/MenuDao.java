package com.spring.dao;

import java.util.List;

import com.spring.model.MenuItem;

public interface MenuDao {
 public void addMenuItem(MenuItem m);
 public void updateMenuItem(MenuItem m);
 public List<MenuItem> listMenuItem();
 public void removeMenuItem(int menuID);
 
}
