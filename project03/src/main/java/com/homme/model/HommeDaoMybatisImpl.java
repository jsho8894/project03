package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.homme.model.entity.HommeVo;

public class HommeDaoMybatisImpl extends SqlSessionDaoSupport implements HommeDao{

	@Override
	public List<HommeVo> selectAll() throws SQLException {
		return getSqlSession().selectList("homme.selectAll");
	}
	
	@Override
	public HommeVo selectOne(int key) throws SQLException {
		return getSqlSession().selectOne("homme.selectOne", key);
	}

	

}
