package com.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.dto.MemberDTO;

public class MemberDAO {

	public static MemberDTO login(SqlSession session,
			 HashMap<String, String> map) {
		MemberDTO dto = session.selectOne("com.dto.login",map);
		return dto;
	}
	
	
	
}
