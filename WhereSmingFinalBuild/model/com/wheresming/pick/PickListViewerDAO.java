package com.wheresming.pick;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.wheresming.database.SqlSessionManager;

public class PickListViewerDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	public List<PickListViewerDTO> selectAllPickList(String mb_id) {

		List<PickListViewerDTO> list = null;

		try {
			list = sqlSession.selectList("com.wheresming.pick.PickDAO.folderViewer", mb_id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return list;

	}
	
	// 	
	public List<PickListViewerDTO> PickListViewer(String fd_name) {

		List<PickListViewerDTO> list = null;
		System.out.println("DAO도착확인");

		try {
			System.out.println("try확인");
			list = sqlSession.selectList("com.wheresming.pick.PickDAO.folderViewList", fd_name);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;

	}
	
	public List<JoinDTO> mypicksImgList(String fd_name){
		
		List<JoinDTO> list = null;
		System.out.println("도착");
		

		try {
			System.out.println("try확인");
			list = sqlSession.selectList("com.wheresming.pick.PickDAO.mypicksImageList", fd_name);
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return list;
	}
}
