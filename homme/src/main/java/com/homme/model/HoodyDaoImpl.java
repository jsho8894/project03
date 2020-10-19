package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.homme.model.entity.HoodyVo;

public class HoodyDaoImpl extends SqlSessionDaoSupport implements HoodyDao {

	@Override
	public List<HoodyVo> hselectAll() throws SQLException {
		return getSqlSession().selectList("homme.hselectAll");
	}

	@Override
	public HoodyVo hselectOne(String hname) throws SQLException {
		return getSqlSession().selectOne("homme.hselectOne",hname);
	}

}
