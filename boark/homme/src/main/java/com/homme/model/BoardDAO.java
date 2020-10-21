package com.homme.model;


import java.util.List;

import com.homme.model.entity.BoardVO;
import com.homme.model.entity.Criteria;
import com.homme.model.entity.ReplyVO;
import com.homme.model.entity.SearchCriteria;


public interface BoardDAO {

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
		
		// ��� + ����¡
		public List<BoardVO> listPage(Criteria cri) throws Exception;
		
		// �Խù� �� ����
		public int listCount() throws Exception;
		
		// ��� + ����¡ + �˻�
		public List<BoardVO> listSearch(SearchCriteria scri) throws Exception;
			
		// �˻� ��� ����
		public int countSearch(SearchCriteria scri) throws Exception;
		
		// ��� ��ȸ
		public List<ReplyVO> readReply(int bno) throws Exception;
}
