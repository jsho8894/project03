package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import com.homme.model.entity.HommeVo;

public interface HommeDao {
	List<HommeVo> selectAll() throws SQLException;
	HommeVo selectOne(String jname) throws SQLException;
}
