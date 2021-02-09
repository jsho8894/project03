package com.homme.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.homme.model.BoardDAO;
import com.homme.model.entity.BoardVO;
import com.homme.model.entity.Criteria;
import com.homme.model.entity.ReplyVO;
import com.homme.model.entity.SearchCriteria;


@Service
public class BoardServiceImpl implements BoardService {
	@Inject
	private BoardDAO dao;

	// �ۼ� 
	@Override
	public void write(BoardVO vo) throws Exception {
		dao.write(vo);		
	}
	
	// ��ȸ
	@Override
	public BoardVO read(int bno) throws Exception {
		return dao.read(bno);
	}
	
	// ���� 
	@Override
	public void update(BoardVO vo) throws Exception {
		dao.update(vo);
	}

	// ����
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);		
	}
 
	// ���
	@Override
	public List<BoardVO> list() throws Exception {
		return dao.list();
	}
 
	
	// �Խù� �� ����
	@Override
	public int count() throws Exception {
		return dao.count();
	}

	
	
	// �Խù� ��� + ����¡
	@Override
	public List<BoardVO> listPage(int displayPost, int postNum) throws Exception {
		return dao.listPage(displayPost, postNum);
	}

	
	
	// �Խù� ��� + ����¡ + �˻�
	@Override
	public List<BoardVO> listPageSearch(
			int displayPost, int postNum, String searchType, String keyword) throws Exception {
		return  dao.listPageSearch(displayPost, postNum, searchType, keyword);
	}
	
	// �Խù� �� ����
	@Override
	public int searchCount(String searchType, String keyword) throws Exception {
		return dao.searchCount(searchType, keyword);
	}
}