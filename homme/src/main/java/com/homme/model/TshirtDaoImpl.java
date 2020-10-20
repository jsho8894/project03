package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.homme.model.entity.TshirtVo;

public class TshirtDaoImpl extends SqlSessionDaoSupport implements TshirtDao {

	@Override
	public List<TshirtVo> tselectAll() throws SQLException {
		return getSqlSession().selectList("homme.tselectAll");
	}

	@Override
	public TshirtVo tselectOne(String tname) throws SQLException {
		return getSqlSession().selectOne("homme.tselectOne",tname);
	}

}
