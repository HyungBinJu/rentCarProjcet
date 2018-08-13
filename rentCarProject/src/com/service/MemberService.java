package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.config.MysqlSessionFactory;
import com.dao.MemberDAO;
import com.dto.MemberDTO;

public class MemberService {

	
	
	public int login(HashMap<String, String> map) {
		SqlSession session = MysqlSessionFactory.getSession();
		MemberDAO dao = new MemberDAO();
		int n = 0;
		try {
			n = dao.login(session, map);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return n;
	}
	
	
	
}
