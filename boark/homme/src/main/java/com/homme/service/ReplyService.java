package com.homme.service;

import java.util.List;

import com.homme.model.entity.ReplyVO;

public interface ReplyService {
	// ��� ��ȸ
		public List<ReplyVO> readReply(int bno) throws Exception;

		// ��� �ۼ�
		public void writeReply(ReplyVO vo) throws Exception;
		
		// Ư�� ��� ��ȸ
		public ReplyVO readReplySelect(int rno) throws Exception;
		
		// ��� ����
		public void replyUpdate(ReplyVO vo) throws Exception;
			
		// ��� ����
		public void replyDelete(ReplyVO vo) throws Exception;

}
