package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.config.MysqlSessionFactory;
import com.dao.MemberDAO;
import com.dto.MemberDTO;

public class MemberService {

	
	
	public MemberDTO login(HashMap<String, String> map) {
		SqlSession session = MysqlSessionFactory.getSession();
		MemberDTO dto = null;
		try {
			dto = MemberDAO.login(session, map);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return dto;
	}
	
	
	
}
