package com.wheresming.movie;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wheresming.database.SqlSessionManager;

public class MovieRatingViewerDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	public double selectRating(int mv_seq) {

		double result = 0;

		try {
			result = sqlSession.selectOne("com.wheresming.movie.MovieRatingDAO.selectRatingAVG", mv_seq);
			result = Math.round(result*100)/100.0;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return result;

	}

}
