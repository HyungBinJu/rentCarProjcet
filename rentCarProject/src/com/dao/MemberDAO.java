package com.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

public class MemberDAO {

	public int login(SqlSession session,
			 HashMap<String, String> map) {
		int n = session.selectOne("com.member.idcheck",map);
		return n;
	}
	
	
	
}
