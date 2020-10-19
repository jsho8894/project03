package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.homme.model.entity.JeanVo;

public class JeanDaoMybatisImpl extends SqlSessionDaoSupport implements JeanDao{

	@Override
	public List<JeanVo> selectAll() throws SQLException {
		return getSqlSession().selectList("homme.selectAll");
	}

	@Override
	public JeanVo selectOne(String jname) throws SQLException {
		return getSqlSession().selectOne("homme.selectOne",jname);
	}
	

}
