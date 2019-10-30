package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.pojo.User;
import com.demo.service.UserService;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	UserService userService;
	
	@RequestMapping("tologin")
	public String tologin() {
		return "login";
	}
	
	@RequestMapping("show")
	public String showUser(Model model){
		List<User> list = userService.list();
		model.addAttribute("users",list);
		return "view";
	
	}
	
	@RequestMapping("toedit")
	public String toUpate(String name,Model model){
		User user = userService.finOne(name);
		model.addAttribute("user", user);
		return "edit";
	
	}
	
	@RequestMapping("update")
	public String UpdateUser(User user){

		userService.update(user);
		return "redirect:show";
	
	}
	
	@RequestMapping("login")
	public String login(User user) {
		
		User u = userService.finOne(user.getName());
		if (u!= null && u.getName().equals(user.getName()) && u.getPassword().equals(user.getPassword())) {
			return "redirect:show";
		}else {
			return "login";
		}
	}
	

	@RequestMapping("toregist")
	public String toRegist(User user) {

			return "regist";
		}
	
	@RequestMapping("regist")
	public String regist(User user) {
		int result = userService.add(user);
		if (result==1) {
			return "login";
		}else {
			return "redirect:toregist";
		}
	}
	
	@RequestMapping("del")
	public String del(int id) {
		int result = userService.del(id);
		
		return "redirect:show";
	}
}
