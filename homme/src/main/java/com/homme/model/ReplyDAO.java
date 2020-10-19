package com.homme.model;

import java.util.List;

import com.homme.model.entity.ReplyVO;

public interface ReplyDAO {

	public List<ReplyVO> readReply(int bno) throws Exception;
}
