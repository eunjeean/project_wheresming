package com.wheresming.member;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wheresming.database.SqlSessionManager;

public class InfoEditDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public int updateMember(MemberDTO vo) {
		int cnt = 0;
		try {
			cnt=sqlSession.update("com.wheresming.member.LoginDAO.update",vo);
			
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return cnt;
	}
}
