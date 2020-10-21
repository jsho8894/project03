package com.homme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HommeController {
	
	@RequestMapping("/buycheck")
	public String buycheckList() {
		return "buycheck";
	}
	@RequestMapping("/index")
	public String index() {
		return "index";
	}



}

