package com.per.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HelloController {
	
	
	@RequestMapping("doUI")
	public String sayHello() {
//		return "helloUI";
		return "do";
		
	}
	
	@RequestMapping("hi")
	public String sayHi() {
		return "hi";
		
	}
	
	@RequestMapping("goodUI")
	public String goodUI() {
		return "good";
		
	}
	
	@RequestMapping("newUI")
	public String newUI() {
		return "NewFile";
		
	}

}
