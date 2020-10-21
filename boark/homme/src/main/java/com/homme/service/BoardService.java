package com.homme.service;

import java.util.List;

import com.homme.model.entity.BoardVO;
import com.homme.model.entity.Criteria;
import com.homme.model.entity.ReplyVO;
import com.homme.model.entity.SearchCriteria;

public interface BoardService {
	
	// �ۼ� 
		public void write(BoardVO vo) throws Exception;
		
		// ��ȸ
		public BoardVO read(int bno) throws Exception;
		
		// ����
		public void update(BoardVO vo) throws Exception;
		
		// ����
		public void delete(int bno) throws Exception;

		// ���
		public List<BoardVO> list() throws Exception;


		// �Խù� �� ����
		public int count() throws Exception;

		
		
		// �Խù� ��� + ����¡
		public List<BoardVO> listPage(int displayPost, int postNum) throws Exception;
		
		
		
		// �Խù� ��� + ����¡ + �˻�
		public List<BoardVO> listPageSearch(
				int displayPost, int postNum, String searchType, String keyword) throws Exception;
		
		// �Խù� �� ���� + �˻� ����
		public int searchCount(String searchType, String keyword) throws Exception;
	
}
