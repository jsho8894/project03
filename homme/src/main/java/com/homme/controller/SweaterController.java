package com.homme.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.homme.model.SweaterDao;

@Controller
@RequestMapping("/top")
public class SweaterController {
	@Autowired
	SweaterDao sweaterdao;

	@RequestMapping("/sweaterlist")
	public String sweater(Model model) throws SQLException {
		model.addAttribute("list", sweaterdao.swselectAll());
		return "top/sweater";
	}

	
	  @RequestMapping(value = "sweaterlist/{swname}", method = RequestMethod.GET )
	  public String detail(@PathVariable String swname, Model model) throws SQLException {
		  model.addAttribute("swdetail", sweaterdao.swselectOne(swname));
		  model.addAttribute("swname", swname);
		  return "top/swdetail"; 
	}
	  

	 

}
