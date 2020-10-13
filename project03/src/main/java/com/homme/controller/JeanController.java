package com.homme.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.homme.model.HommeDao;

@Controller
@RequestMapping("/pants")
public class JeanController {
	@Autowired
	HommeDao hommeDao;
	
	@RequestMapping("/")
	public String jean(Model model) throws SQLException {
		model.addAttribute("list", hommeDao.selectAll());
		return "pants/jean";
	}
	
	@RequestMapping("/")
	public String detail(@PathVariable int jnum, Model model) throws SQLException {
		model.addAttribute("bean", hommeDao.selectOne(jnum));
		return "pants/detail";
	}
	
	
}
