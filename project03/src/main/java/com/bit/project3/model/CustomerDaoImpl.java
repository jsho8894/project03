package com.bit.project3.model;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.bit.project3.model.entity.CustomerVo;

public class CustomerDaoImpl implements CustomerDao {
	
//	@Inject
	SqlSession sqlsession;

	@Override
	public void register(CustomerVo cusvo) throws SQLException {
		CustomerDao dao=sqlsession.getMapper(CustomerDao.class);
		dao.register(cusvo);

	}


	@Override
	public CustomerVo login(CustomerVo cusvo) throws SQLException {
		CustomerDao dao=sqlsession.getMapper(CustomerDao.class);
		dao.login(cusvo);
		return cusvo;
	}

}
