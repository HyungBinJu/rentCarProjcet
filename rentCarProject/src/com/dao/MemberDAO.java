package com.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.dto.MemberDTO;

public class MemberDAO {

	public int login(SqlSession session,
			 HashMap<String, String> map) {
		int n = session.selectOne("com.member.idcheck",map);
		return n;
	}

	public int addMember(SqlSession session, MemberDTO mDTO) {
		System.out.println("dao"+mDTO);
		int n = session.insert("com.member.addMember", mDTO);
		return n;
	}
	
	
	
}
