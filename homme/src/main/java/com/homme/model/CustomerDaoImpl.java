package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
<<<<<<< HEAD
import org.springframework.ui.Model;
=======
>>>>>>> zero-1

import com.homme.model.entity.CustomerVo;

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


	@Override
	public List<CustomerVo> selectAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}


	public CustomerVo managerlogin(CustomerVo cusvo) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

<<<<<<< HEAD

	@Override
	public void updateOne(CustomerVo bean) throws SQLException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public CustomerVo selectOne(String user_id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}




=======
>>>>>>> zero-1
}
