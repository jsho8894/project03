package com.homme.model;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.homme.model.entity.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	// ���̹�Ƽ�� 
		@Inject
		private SqlSession sql;
		
		// ���� 
		private static String namespace = "com.homme.Mapper.boardMapper";
			
		// �ۼ�
		@Override
		public void write(BoardVO vo) throws Exception {
			sql.insert(namespace + ".write", vo);
		}

		// ��ȸ
		@Override
		public BoardVO read(int bno) throws Exception {
			return sql.selectOne(namespace + ".read", bno);
		} 
		
		// ����
		@Override
		public void update(BoardVO vo) throws Exception {
			sql.update(namespace + ".update", vo);
		}

		// ����
		@Override
		public void delete(int bno) throws Exception {
			sql.delete(namespace + ".delete", bno);
		}

		// ���
		@Override
		public List<BoardVO> list() throws Exception {
			return sql.selectList(namespace + ".list");
		}

		// �Խù� �� ����
		@Override
		public int count() throws Exception {
			return sql.selectOne(namespace + ".count");	
		}

		
		
		// �Խù� ��� + ����¡
		@Override
		public List<BoardVO> listPage(int displayPost, int postNum) throws Exception {

			HashMap<String, Integer> data = new HashMap<String, Integer>();
			
			data.put("displayPost", displayPost);
			data.put("postNum", postNum);
			
			return sql.selectList(namespace + ".listPage", data);
		}

		
		
		// �Խù� ��� + ����¡ + �˻�
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
		
		// �Խù� �� ���� + �˻� ����
		@Override
		public int searchCount(String searchType, String keyword) throws Exception {
			
			HashMap<String, Object> data = new HashMap<String, Object>();
			
			data.put("searchType", searchType);
			data.put("keyword", keyword);
			
			return sql.selectOne(namespace + ".searchCount", data);	
		}

}