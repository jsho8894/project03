package com.homme.controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jean")
public class JeanController {
	
	@RequestMapping("/")
	public String jean(Model model) throws SQLException {
		return "pants/jean";
	}
	
}
