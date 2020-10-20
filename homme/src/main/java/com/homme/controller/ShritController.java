package com.homme.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.homme.model.ShirtDao;

@Controller
@RequestMapping("/top")
public class ShritController {
	@Autowired
	ShirtDao shirtdao;

	@RequestMapping("/shirtlist")
	public String shirt(Model model) throws SQLException {
		model.addAttribute("list", shirtdao.shselectAll());
		return "top/shirt";
	}

	
	  @RequestMapping(value = "shirtlist/{shname}", method = RequestMethod.GET )
	  public String detail(@PathVariable String shname, Model model) throws SQLException {
		  model.addAttribute("shdetail", shirtdao.shselectOne(shname));
		  model.addAttribute("shname", shname);
		  return "top/shdetail"; 
	}
	  

	 

}
