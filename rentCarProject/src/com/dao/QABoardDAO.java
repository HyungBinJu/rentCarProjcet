package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.QABoardDTO;

public class QABoardDAO {

	public List<QABoardDTO> getAllList(SqlSession session) {
		List<QABoardDTO> list = session.selectList("com.QABoard.getAllList");
		return list;
	}

	public QABoardDTO getContent(SqlSession session, int num) {
		QABoardDTO dto = session.selectOne("com.QABoard.getContent",num);
		return dto;
	}

}
