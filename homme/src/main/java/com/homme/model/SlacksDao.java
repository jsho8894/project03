package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import com.homme.model.entity.SlacksVo;

public interface SlacksDao {
	List<SlacksVo> selectAll() throws SQLException;
	SlacksVo selectOne(String sname) throws SQLException;
}