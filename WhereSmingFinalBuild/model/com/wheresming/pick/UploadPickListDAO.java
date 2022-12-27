package com.wheresming.pick;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wheresming.database.SqlSessionManager;

public class UploadPickListDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	public int uploadPickList(UploadPickListDTO vo) {

		int result = 0;

		try {
			result = sqlSession.update("com.wheresming.pick.UploadDAO.folderUpload", vo);

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

	public List<UploadPickListDTO> pickListLikes() {

		List<UploadPickListDTO> list = null;

		try {
			
			list = sqlSession.selectList("com.wheresming.pick.UploadDAO.folderLikes");
			
			if (list != null) {
				System.out.println("픽! 인기순 조회 완료");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return list;

	}
	
	public List<UploadPickListDTO> pickListNew() {
		
		List<UploadPickListDTO> list = null;
		
		try {
			
			list = sqlSession.selectList("com.wheresming.pick.UploadDAO.folderNew");
			
			if (list != null) {
				System.out.println("픽! 최신순 조회 완료");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return list;
		
	}
	
	public List<UploadPickListDTO> pickListImage() {
		
		List<UploadPickListDTO> list = null;
		
		try {
			
			list = sqlSession.selectList("com.wheresming.pick.UploadDAO.folderLikeImage");
			
			if (list != null) {
				System.out.println("픽! 이미지");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return list;
		
	}

}
