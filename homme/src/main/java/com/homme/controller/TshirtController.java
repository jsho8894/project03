package com.homme.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.homme.model.HommeDao;
import com.homme.model.TshirtDao;

@Controller
@RequestMapping("/top")
public class TshirtController {
	@Autowired
	TshirtDao tshirtdao;

	@RequestMapping("/")
	public String tshirt(Model model) throws SQLException {
		model.addAttribute("list", tshirtdao.tselectAll());
		return "top/tshirt";
	}

	
	  @RequestMapping(value = "/{tname}", method = RequestMethod.GET )
	  public String detail(@PathVariable String tname, Model model) throws SQLException {
		  model.addAttribute("tdetail", tshirtdao.tselectOne(tname));
		  model.addAttribute("tname", tname);
		  return "top/tdetail"; 
	}
	  

	 

}
