package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import com.homme.model.entity.ShirtVo;

public interface ShirtDao {
	List<ShirtVo> shselectAll() throws SQLException;
	ShirtVo shselectOne(String shname) throws SQLException;

}
