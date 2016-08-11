package com.spring.vertx.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class MainController {
	
	@RequestMapping("popup.now")
	public String mainc(){
		return "/chat/rchat.jsp";
	}
	
	@RequestMapping("mainc.now")
	public String main(){
		return "/main_layout/mainLayout.jsp";
	}
}
