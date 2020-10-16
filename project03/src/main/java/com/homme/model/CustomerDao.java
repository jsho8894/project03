package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import com.homme.model.entity.CustomerVo;

public interface CustomerDao {
	
	public void register(CustomerVo cusvo) throws SQLException;
	public CustomerVo login(CustomerVo cusvo) throws SQLException;
	public List<CustomerVo> selectAll() throws SQLException;

}
