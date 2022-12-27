package com.wheresming.movie;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wheresming.database.SqlSessionManager;

public class MovieRatingDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	public int addRating(MovieRatingDTO vo, MovieRatingDTO vi) {

		int result = 0;
		String isNull = null;

		try {

			isNull = sqlSession.selectOne("com.wheresming.movie.MovieRatingDAO.selectRatingNull", vi);

			if (isNull == null) {
				result = sqlSession.insert("com.wheresming.movie.MovieRatingDAO.insertRating", vo);
			}

			if (result > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return result;

	}

}
