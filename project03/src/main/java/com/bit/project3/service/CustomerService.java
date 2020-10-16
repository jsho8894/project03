package com.bit.project3.service;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.bit.project3.model.entity.CustomerVo;
import com.sun.javafx.sg.prism.NGShape.Mode;

public interface CustomerService {
	
	public void register(CustomerVo cusvo) throws SQLException;
	
	public CustomerVo login(CustomerVo cusvo) throws SQLException;
	
	public void listService(Model model) throws SQLException;
	
	public void myinfoService(Model model,String user_id) throws SQLException;
	
	public void oneEditService(CustomerVo bean) throws SQLException;

}
