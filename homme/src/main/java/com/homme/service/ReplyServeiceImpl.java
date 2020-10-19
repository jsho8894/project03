package com.homme.service;

import java.util.List;

import javax.inject.Inject;

import com.homme.model.ReplyDAO;
import com.homme.model.entity.ReplyVO;

public class ReplyServeiceImpl implements ReplyService {
	
	@Inject
	private ReplyDAO dao;

	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}

}
