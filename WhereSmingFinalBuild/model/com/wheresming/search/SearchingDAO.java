package com.wheresming.search;
import java.util.Collections;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.wheresming.database.SqlSessionManager;
import com.wheresming.movie.MovieDTO;
public class SearchingDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public MovieDTO selectSearch(MovieDTO vo) {
		
		MovieDTO searchMovie = null;
		
		try {
			searchMovie = sqlSession.selectOne("com.wheresming.search.SearchingDAO.select",vo);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("SQL 실패");
		}finally {
			sqlSession.close();
			
		}
		return searchMovie;
	}		
	
	public List<MovieDTO> selectAllList(String mv_title){
		List<MovieDTO> list = null;
		try {
			list = sqlSession.selectList("com.wheresming.search.SearchingDAO.selectAllList",mv_title);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return list;
				
	}
	
	public MovieDTO selectPoster(MovieDTO vo) {
		
		MovieDTO selectPoster = null;
		
		try {
			selectPoster = sqlSession.selectOne("com.wheresming.search.SearchingDAO.selectPoster",vo);
			System.out.println(selectPoster);
			System.out.println("SQL 성공");
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("SQL 실패");
		}finally {
			sqlSession.close();
			
		}
		return selectPoster;
	}	
	
	// 영화 상세페이지 추천 영화 보여주기
	
	public List<MovieDTO> recommend(String mv_genre){
		List<MovieDTO> list = null;
		try {
			list = sqlSession.selectList("com.wheresming.search.SearchingDAO.recommend",mv_genre);
			Collections.shuffle(list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return list;
				
	}
}