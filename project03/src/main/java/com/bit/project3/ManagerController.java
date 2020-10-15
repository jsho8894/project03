package com.bit.project3;

import java.sql.SQLException;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.project3.service.CustomerService;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	
	@Inject
	CustomerService service;
	
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String Managerhome() {
		return "manager/managerhome";
	}
	@RequestMapping(value="/customerlist",method = RequestMethod.GET)
	public String CusList(Model model) {
		try {
			service.listService(model);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "manager/customerlist";
	}

}
