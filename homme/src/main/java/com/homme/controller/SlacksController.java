package com.homme.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.homme.model.SlacksDao;

@Controller
@RequestMapping("/pants")
public class SlacksController {
	@Autowired
	SlacksDao slacksDao;
	
	@RequestMapping("/slackslist")
	public String jean(Model model) throws SQLException {
		model.addAttribute("list", slacksDao.selectAll());
		return "pants/slacks";
	}
	
	@RequestMapping(value = "/{sname}", method = RequestMethod.GET )
	public String detail(@PathVariable String sname, Model model) throws SQLException {
		model.addAttribute("detail", slacksDao.selectOne(sname));
		model.addAttribute("sname", sname);
		return "pants/slacksdetail"; 
	}
}