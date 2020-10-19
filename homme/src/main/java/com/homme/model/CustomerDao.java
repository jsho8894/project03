package com.homme.model;

import java.sql.SQLException;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;
import com.homme.model.entity.CustomerVo;

public interface CustomerDao {
	
	public void register(CustomerVo cusvo) throws SQLException;
	public CustomerVo login(CustomerVo cusvo) throws SQLException;
	public List<CustomerVo> selectAll() throws SQLException;
	public void updateOne(CustomerVo bean) throws SQLException;
	public CustomerVo selectOne(String user_id) throws SQLException;


}
