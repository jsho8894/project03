package com.homme.service;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.homme.model.entity.CustomerVo;
import com.sun.javafx.sg.prism.NGShape.Mode;

public interface CustomerService {
	
	public void register(CustomerVo cusvo) throws SQLException;
	public CustomerVo login(CustomerVo cusvo) throws SQLException;
	public void listService(Model model) throws SQLException;

}
