package com.homme.model;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.homme.model.entity.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	// 마이바티스 
		@Inject
		private SqlSession sql;
		
		// 매퍼 
		private static String namespace = "com.homme.Mapper.boardMapper";
			
		// 작성
		@Override
		public void write(BoardVO vo) throws Exception {
			sql.insert(namespace + ".write", vo);
		}

		// 조회
		@Override
		public BoardVO read(int bno) throws Exception {
			return sql.selectOne(namespace + ".read", bno);
		} 
		
		// 수정
		@Override
		public void update(BoardVO vo) throws Exception {
			sql.update(namespace + ".update", vo);
		}

		// 삭제
		@Override
		public void delete(int bno) throws Exception {
			sql.delete(namespace + ".delete", bno);
		}

		// 목록
		@Override
		public List<BoardVO> list() throws Exception {
			return sql.selectList(namespace + ".list");
		}

		// 게시물 총 갯수
		@Override
		public int count() throws Exception {
			return sql.selectOne(namespace + ".count");	
		}

		
		
		// 게시물 목록 + 페이징
		@Override
		public List<BoardVO> listPage(int displayPost, int postNum) throws Exception {

			HashMap<String, Integer> data = new HashMap<String, Integer>();
			
			data.put("displayPost", displayPost);
			data.put("postNum", postNum);
			
			return sql.selectList(namespace + ".listPage", data);
		}

		
		
		// 게시물 목록 + 페이징 + 검색
		@Override
		public List<BoardVO> listPageSearch(
				int displayPost, int postNum, String searchType, String keyword) throws Exception {

			HashMap<String, Object> data = new HashMap<String, Object>();
			
			data.put("displayPost", displayPost);
			data.put("postNum", postNum);
			
			data.put("searchType", searchType);
			data.put("keyword", keyword);
			
			return sql.selectList(namespace + ".listPageSearch", data);
		}
		
		// 게시물 총 갯수 + 검색 적용
		@Override
		public int searchCount(String searchType, String keyword) throws Exception {
			
			HashMap<String, Object> data = new HashMap<String, Object>();
			
			data.put("searchType", searchType);
			data.put("keyword", keyword);
			
			return sql.selectOne(namespace + ".searchCount", data);	
		}

}