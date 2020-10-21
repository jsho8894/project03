package com.homme.service;

import java.util.List;

import com.homme.model.entity.BoardVO;
import com.homme.model.entity.Criteria;
import com.homme.model.entity.ReplyVO;
import com.homme.model.entity.SearchCriteria;

public interface BoardService {
	
	// 작성 
		public void write(BoardVO vo) throws Exception;
		
		// 조회
		public BoardVO read(int bno) throws Exception;
		
		// 수정
		public void update(BoardVO vo) throws Exception;
		
		// 삭제
		public void delete(int bno) throws Exception;

		// 목록
		public List<BoardVO> list() throws Exception;


		// 게시물 총 갯수
		public int count() throws Exception;

		
		
		// 게시물 목록 + 페이징
		public List<BoardVO> listPage(int displayPost, int postNum) throws Exception;
		
		
		
		// 게시물 목록 + 페이징 + 검색
		public List<BoardVO> listPageSearch(
				int displayPost, int postNum, String searchType, String keyword) throws Exception;
		
		// 게시물 총 갯수 + 검색 적용
		public int searchCount(String searchType, String keyword) throws Exception;
	
}
