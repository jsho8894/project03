package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.homme.model.entity.SweaterVo;

public class SweaterDaoImpl extends SqlSessionDaoSupport implements SweaterDao {

	@Override
	public List<SweaterVo> swselectAll() throws SQLException {
		return getSqlSession().selectList("homme.swselectAll");
	}

	@Override
	public SweaterVo swselectOne(String swname) throws SQLException {
		return getSqlSession().selectOne("homme.swselectOne",swname);
	}

}
