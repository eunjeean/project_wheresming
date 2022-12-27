package com.wheresming.pick;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MyPickListViewer extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String foldername = request.getParameter("foldername");
		System.out.println("폴더이름도착");
		
		
		String fd_name= foldername;
		
		System.out.println(fd_name);
				
		PickListViewerDAO dao = new PickListViewerDAO();
		
		List<PickListViewerDTO>  mypicksAllList = dao.PickListViewer(fd_name);
		List<JoinDTO>  mypicksImgList = dao.mypicksImgList(fd_name);
		
		System.out.println("시작");
		//System.out.println(mypicksAllList.size());
		//System.out.println(mypicksImgList.size());
		if (mypicksAllList != null && mypicksImgList != null) {

			System.out.println("폴더네임 : " + fd_name);
			HttpSession session = request.getSession();
			
			session.setAttribute("mypicksAllList", mypicksAllList);
			
			session.setAttribute("mypicksImgList", mypicksImgList);
			
			response.sendRedirect("mypicksList.jsp");
			
		} else {
			System.out.println("폴더폴더");
			response.sendRedirect("mypage.jsp");

		}

	}
		
	


}
