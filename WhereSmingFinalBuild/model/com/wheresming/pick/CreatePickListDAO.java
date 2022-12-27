package com.wheresming.pick;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wheresming.database.SqlSessionManager;

public class CreatePickListDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public int createPickList(PickListDTO vo) {
		
		int result = 0;
		
		try {
			result = sqlSession.insert("com.wheresming.pick.PickDAO.createFolder", vo);
			
			if(result>0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("맵퍼실패");
		} finally {
			sqlSession.close();
		}
		
		return result; 
		
	}
	
	
}
