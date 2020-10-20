package com.homme.controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/slacks")
public class SlacksController {
	
	@RequestMapping("/slackslist")
	public String jean(Model model) throws SQLException {
		return "pants/slacks";
	}
	
}
