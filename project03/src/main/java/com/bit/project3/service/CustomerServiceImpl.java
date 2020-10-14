package com.bit.project3.service;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.bit.project3.model.CustomerDao;
import com.bit.project3.model.entity.CustomerVo;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Inject 
	SqlSession sqlSession;
	
	@Override
	public void register(CustomerVo cusvo) throws SQLException {
		CustomerDao dao=sqlSession.getMapper(CustomerDao.class);
		System.out.println(cusvo);
		dao.register(cusvo);

	}


	@Override
	public CustomerVo login(CustomerVo cusvo) throws SQLException{
		System.out.println(sqlSession);
		CustomerDao dao=sqlSession.getMapper(CustomerDao.class);
		System.out.println(dao);
		System.out.println(cusvo);
		
		return dao.login(cusvo);
	}

}
