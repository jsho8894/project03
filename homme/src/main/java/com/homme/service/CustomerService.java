package com.homme.service;

import java.sql.SQLException;
import org.springframework.ui.Model;
import com.homme.model.entity.CustomerVo;

public interface CustomerService {
	
	public void register(CustomerVo cusvo) throws SQLException;
	
	public CustomerVo login(CustomerVo cusvo) throws SQLException;
	
	public void listService(Model model) throws SQLException;
	
	public void myinfoService(Model model,String user_id) throws SQLException;
	
	public void oneEditService(CustomerVo bean) throws SQLException;

}
