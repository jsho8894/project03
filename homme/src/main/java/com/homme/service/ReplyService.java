package com.homme.service;

import java.util.List;

import com.homme.model.entity.ReplyVO;

public interface ReplyService {
	public List<ReplyVO> readReply(int bno) throws Exception;

}
