package com.bit.project3.service;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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


	@Override
	public void listService(Model model) throws SQLException {
		CustomerDao dao = sqlSession.getMapper(CustomerDao.class);
		System.out.println(dao);
		model.addAttribute("list", dao.selectAll());
		
	}


	@Override
	public void oneEditService(CustomerVo bean) throws SQLException {
		CustomerDao dao=sqlSession.getMapper(CustomerDao.class);
		dao.updateOne(bean);
		
	}


	@Override
	public void myinfoService(Model model, String user_id) throws SQLException {
		CustomerDao dao=sqlSession.getMapper(CustomerDao.class);
		model.addAttribute("bean",dao.selectOne(user_id));
		
	}



	




}
