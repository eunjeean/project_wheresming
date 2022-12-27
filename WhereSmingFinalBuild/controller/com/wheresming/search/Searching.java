package com.wheresming.search;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wheresming.movie.MovieDTO;
public class Searching extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		// index.jsp 에서 검색한 mb_title 받기
		String mv_title = request.getParameter("mv_title");
		System.out.println(mv_title);
		
		// SearchDTO 객체 생성 (mb_title)
		MovieDTO vo = new MovieDTO(mv_title);
		
		// SearchDAO 객체 생성
		SearchingDAO dao = new SearchingDAO();
		
		// dao.selectSearch() 메서드 호출
		List<MovieDTO> searchMovie = dao.selectAllList(mv_title);
		
		
		
		// 세션 저장 및 파라미터값 전송
		
		
		if(searchMovie != null) {
			System.out.println("검색 성공");
			HttpSession session = request.getSession();
			session.setAttribute("SearchingList",searchMovie);
			response.sendRedirect("searchList.jsp");
		}else {
			System.out.println("검색실패");
			response.sendRedirect("searchListFail.jsp");
		}
	}
}