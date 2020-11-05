package com.per.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.per.entity.User;
import com.per.service.UserService;

@Controller
@RequestMapping("/user/")
public class UserController {
	
	
	@Autowired
	private UserService userService;
	
	

	
	/**
	 * jsp 访问
	 * http://localhost:8090/user/findJSP
	 * */
	@RequestMapping("findJSP")
	public Object doFindJSP(Model model) {
	List<User> list	= userService.finds();
	
	model.addAttribute("list",list);
	
		//return "user_list_jsp";
		return "user_list_jsp2";
		
	}

}
