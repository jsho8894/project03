package com.homme.service;

import java.sql.SQLException;

<<<<<<< HEAD
import org.springframework.ui.Model;

import com.homme.model.entity.CustomerVo;
=======
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.homme.model.entity.CustomerVo;
import com.sun.javafx.sg.prism.NGShape.Mode;
>>>>>>> zero-1

public interface CustomerService {
	
	public void register(CustomerVo cusvo) throws SQLException;
<<<<<<< HEAD
	
	public CustomerVo login(CustomerVo cusvo) throws SQLException;
	
	public void listService(Model model) throws SQLException;
	
	public void myinfoService(Model model,String user_id) throws SQLException;
	
	public void oneEditService(CustomerVo bean) throws SQLException;
=======
	public CustomerVo login(CustomerVo cusvo) throws SQLException;
	public void listService(Model model) throws SQLException;
>>>>>>> zero-1

}
