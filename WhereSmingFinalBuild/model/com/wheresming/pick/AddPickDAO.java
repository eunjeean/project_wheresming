package com.wheresming.pick;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wheresming.database.SqlSessionManager;

public class AddPickDAO {
	

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public int AddPick(AddPickDTO vo) {
		
		int result = 0;
		
		try {                             //맵퍼 네임스페이스  / 뒤엔 생선한맵퍼이름
			result = sqlSession.insert("com.wheresming.pick.PickDAO.addPick", vo);
			
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
