package com.homme.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.homme.model.HoodyDao;
import com.homme.model.ShirtDao;

@Controller
@RequestMapping("/top")
public class HoodyController {
	@Autowired
	HoodyDao hoodydao;

	@RequestMapping("/hoodylist")
	public String hoody(Model model) throws SQLException {
		model.addAttribute("list", hoodydao.hselectAll());
		return "top/hoody";
	}

	
	  @RequestMapping(value = "hoodylist/{hname}", method = RequestMethod.GET )
	  public String detail(@PathVariable String hname, Model model) throws SQLException {
		  model.addAttribute("hdetail", hoodydao.hselectOne(hname));
		  model.addAttribute("hname", hname);
		  return "top/hdetail"; 
	}
	  

	 

}
