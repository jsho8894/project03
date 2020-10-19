package com.homme.model;

import java.sql.SQLException;
import java.util.List;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import com.homme.model.entity.SlacksVo;

public class SlacksDaoMybatisImpl extends SqlSessionDaoSupport implements SlacksDao{

	@Override
	public List<SlacksVo> selectAll() throws SQLException {
		return getSqlSession().selectList("homme.slselectAll");
	}

	@Override
	public SlacksVo selectOne(String sname) throws SQLException {
		return getSqlSession().selectOne("homme.selectOne",sname);
	}
	

}