package com.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.dto.MemberDTO;

public class MemberDAO {

	public static int login(SqlSession session,
			 HashMap<String, String> map) {
		int n  = session.selectOne("com.member.idcheck",map);
		return n;
	}
	
	
	
}
