package com.wheresming.member;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wheresming.database.SqlSessionManager;

public class SigninDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	public int insertMember(MemberDTO vo) {
		
		int cnt=0;
		
		try {
			
			cnt = sqlSession.insert("com.wheresming.member.LoginDAO.insert", vo);
		
			if(cnt>0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return cnt;
	}
	
}
