package com.homme.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.ui.Model;

import com.homme.model.entity.ReplyVO;
import com.homme.model.entity.BoardVo;

public interface BoardService {
	
	void listService(Model model) throws SQLException;

	void oneAddService(BoardVo bean) throws SQLException;

	void detailService(Model model, int bno) throws SQLException;

	void oneEditService(BoardVo bean) throws SQLException;

	void oneDelService(int bno) throws SQLException;

}
