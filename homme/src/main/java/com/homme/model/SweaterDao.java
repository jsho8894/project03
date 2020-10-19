package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import com.homme.model.entity.SweaterVo;

public interface SweaterDao {
	List<SweaterVo> swselectAll() throws SQLException;
	SweaterVo swselectOne(String swname) throws SQLException;

}
