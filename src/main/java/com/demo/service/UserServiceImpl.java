package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.mapper.UserMapper;
import com.demo.pojo.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserMapper userMapper;
	
	public List<User> list() {

		return userMapper.list();
	}

	public int del(int id) {
		
		return userMapper.del(id);
	}

	public void update(User user) {
		userMapper.update(user);
	}

	public int add(User user) {
		return userMapper.add(user);
	}

	public User finOne(String name) {
		return userMapper.findOne(name);
	}


}
