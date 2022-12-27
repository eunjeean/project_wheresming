package com.wheresming.member;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wheresming.database.SqlSessionManager;

public class LoginDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public MemberDTO selectMember(MemberDTO vo) {
		
		MemberDTO loginMember = null;
		
		try {
			loginMember = sqlSession.selectOne("com.wheresming.member.LoginDAO.select",vo);
			// select - commit/rollback 생략
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
			
		}
		
		return loginMember;
	}

}
