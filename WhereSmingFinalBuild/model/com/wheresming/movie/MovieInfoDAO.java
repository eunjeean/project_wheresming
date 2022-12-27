package com.wheresming.movie;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.wheresming.database.SqlSessionManager;
import com.wheresming.search.SearchDTO;

public class MovieInfoDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	public MovieDTO selectCode(int mv_seq) {

		MovieDTO code = null;

		try {
			System.out.println("MovieInfoDAO SQL 성공");
			code = sqlSession.selectOne("com.wheresming.movie.MovieInfoDAO.select", mv_seq);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("MovieInfoDAO SQL 실패");
		} finally {
			sqlSession.close();

		}
		return code;
	}
}
