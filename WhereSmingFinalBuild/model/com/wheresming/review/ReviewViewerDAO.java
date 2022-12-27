package com.wheresming.review;

import java.math.BigDecimal;
import java.util.List;

import javax.xml.crypto.Data;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wheresming.database.SqlSessionManager;
import com.wheresming.review.ReviewDTO;

public class ReviewViewerDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	public List<ReviewViewerDTO> selectAllReview(int mv_seq) {

		List<ReviewViewerDTO> list = null;

		try {
			
			list = sqlSession.selectList("com.wheresming.review.ReviewDAO.selectList", mv_seq);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return list;

	}

	public int countReturn(int mv_seq) {

		int result = 0;

		try {
			result = sqlSession.selectOne("com.wheresming.review.ReviewDAO", mv_seq);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return result;

	}

}
