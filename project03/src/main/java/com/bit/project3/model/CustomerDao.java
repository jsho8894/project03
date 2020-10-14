package com.bit.project3.model;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.bit.project3.model.entity.CustomerVo;

public interface CustomerDao {
	
	public void register(CustomerVo cusvo) throws SQLException;
	public CustomerVo login(CustomerVo cusvo) throws SQLException;


}
