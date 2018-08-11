package com.config;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MySqlSessionFactory {

	private static SqlSessionFactory sqlSessionFactory = null;
	
	//한번만 만들어짐 
	static {
		String resource = "com/config/Configuration.xml";
		InputStream inputStream = null; //로컬변수 초기화
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}//end static

	public static SqlSession getSession() {
		return sqlSessionFactory.openSession();
	}
}
