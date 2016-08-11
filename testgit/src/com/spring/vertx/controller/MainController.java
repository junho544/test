package com.spring.vertx.controller;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainController{
	
	@RequestMapping("mainc.now")
	public String mainc(){
		return "/chat/rchat.jsp";
	}
	@RequestMapping("mainc2.now")
	public String mainc2(){
		return "/chat/rchat2.jsp";
	}
}
