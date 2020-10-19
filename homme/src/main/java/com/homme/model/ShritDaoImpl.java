package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.homme.model.entity.ShirtVo;

public class ShritDaoImpl extends SqlSessionDaoSupport implements ShirtDao {

	@Override
	public List<ShirtVo> shselectAll() throws SQLException {
		return getSqlSession().selectList("homme.shselectAll");
	}

	@Override
	public ShirtVo shselectOne(String shname) throws SQLException {
		return getSqlSession().selectOne("homme.shselectOne",shname);
	}

}
