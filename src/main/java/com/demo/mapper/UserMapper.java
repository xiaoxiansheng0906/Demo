package com.demo.mapper;

import java.util.List;

import com.demo.pojo.User;

public interface UserMapper {

	public List<User> list();
	 
	public int del(int id);
 
	public void update(User user);
 
	public int add(User user);
 
	public User findOne(String name);
}
