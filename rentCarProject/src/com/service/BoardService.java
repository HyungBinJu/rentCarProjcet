package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MysqlSessionFactory;
import com.dao.BoardDAO;

import com.dao.MemberDAO;
import com.dto.BoardDTO;
import com.dto.MemberDTO;


public class BoardService {

	private BoardDAO dao;
	
	public BoardService() {
		dao= new BoardDAO();
	}
	


	public List<BoardDTO> selectBoardList() {
		SqlSession session = MysqlSessionFactory.getSession();
		List<BoardDTO> list = null;
		try {
			list =dao.selectBoardList(session);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return list;
	}



	public int insertBoard(BoardDTO dto) {
		SqlSession session = MysqlSessionFactory.getSession();
		int n = 0;
		try {
			n =dao.insertBoard(session,dto);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return n;
	}
	
	
	
}
