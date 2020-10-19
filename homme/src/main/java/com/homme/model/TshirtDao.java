package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import com.homme.model.entity.TshirtVo;

public interface TshirtDao {
	List<TshirtVo> tselectAll() throws SQLException;
	TshirtVo tselectOne(String tname) throws SQLException;

}
