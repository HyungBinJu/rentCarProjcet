package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MysqlSessionFactory;
import com.dao.QABoardDAO;
import com.dto.QABoardDTO;

public class QABoardService {
	QABoardDAO dao = null;
	
	public QABoardService() {
		dao = new QABoardDAO();
	}

	public List<QABoardDTO> getAllList() {
		SqlSession session = MysqlSessionFactory.getSession();
		List<QABoardDTO> list = null;
		
		try {
			list = dao.getAllList(session);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return list;
	}

	public QABoardDTO getContent(int num) {
		SqlSession session = MysqlSessionFactory.getSession();
		QABoardDTO dto = null;
		
		try {
			dto = dao.getContent(session, num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return dto;
	}
	
	
}
