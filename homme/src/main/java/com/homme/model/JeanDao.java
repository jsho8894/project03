package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import com.homme.model.entity.JeanVo;

public interface JeanDao {
	List<JeanVo> selectAll() throws SQLException;
	JeanVo selectOne(String jname) throws SQLException;
}
