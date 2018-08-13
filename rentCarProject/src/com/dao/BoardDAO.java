package com.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.BoardDTO;


public class BoardDAO {


	public List<BoardDTO> selectBoardList(SqlSession session) {
		List<BoardDTO> list = session.selectList("com.board.selectBoardList") ;
		return list;
	}

	public int insertBoard(SqlSession session, BoardDTO dto) {
		int n = session.insert("insertBoard",dto);
		return n;
	}
	
	
	
}
