package com.demo.service;

import java.util.List;

import com.demo.pojo.User;

public interface UserService {

	public List<User> list();
	 
	public int del(int id);
 
	public void update(User user);
 
	public int add(User user);
 
	public User finOne(String name);
}
