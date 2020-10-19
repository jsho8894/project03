package com.homme.service;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.homme.model.BoardDAO;
import com.homme.model.entity.BoardVo;


@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public void listService(Model model) throws SQLException {
		BoardDAO dao = sqlSession.getMapper(BoardDAO.class);
		System.out.println(dao);
		model.addAttribute("list", dao.selectAll());
	}

	@Override
	public void oneAddService(BoardVo bean) throws SQLException {
		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
		dao.insertOne(bean);
//		bean.setTitle("next"+bean.getTitle());
//		bean.setUser_id("������");
	}

	@Override
	public void detailService(Model model, int bno) throws SQLException {
		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
		model.addAttribute("bean",dao.selectOne(bno));

	}

	@Override
	public void oneEditService(BoardVo bean) throws SQLException {
		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
		dao.updateOne(bean);

	}

	@Override
	public void oneDelService(int bno) throws SQLException {
		BoardDAO dao=sqlSession.getMapper(BoardDAO.class);
		dao.deleteOne(bno);
//		dao.deleteOne(bno-1);
	}
	


}