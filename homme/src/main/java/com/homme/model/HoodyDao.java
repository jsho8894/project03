package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import com.homme.model.entity.HoodyVo;

public interface HoodyDao {
	List<HoodyVo> hselectAll() throws SQLException;
	HoodyVo hselectOne(String hname) throws SQLException;

}
