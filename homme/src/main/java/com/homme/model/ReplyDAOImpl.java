package com.homme.model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.homme.model.entity.ReplyVO;

public class ReplyDAOImpl implements ReplyDAO {
	
	@Inject
	SqlSession sql;

	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		return sql.selectList("replyMapper.readReply", bno);
	}

}
