package com.homme.model;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.homme.model.entity.BoardVo;


public interface BoardDAO {

	List<BoardVo> selectAll() throws SQLException;
	int selectTot() throws SQLException;
	BoardVo selectOne(int bno) throws SQLException;
	void insertOne(BoardVo bean) throws SQLException;
	void updateOne(BoardVo bean) throws SQLException;
	void deleteOne(int bno) throws SQLException;
	
}
