package com.wheresming.search;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wheresming.movie.MovieDTO;
import com.wheresming.movie.MovieInfoDAO;

public class SearchMovie extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		// searchList.jsp 에서 검색한 mb_title 받기
		int mv_seq = Integer.parseInt(request.getParameter("mv_seq"));
		System.out.println(mv_seq);

		// MovieDTO 객체 생성 (mv_seq)
		MovieDTO vo = new MovieDTO(mv_seq);

		SearchingDAO dao = new SearchingDAO();

		// 세션 저장 및 파라미터값 전송
		System.out.println("dao실행");
		MovieDTO selectPoster = dao.selectPoster(vo);
		System.out.println("selectPoster : " + selectPoster);

		System.out.println(mv_seq);
		
		MovieInfoDAO dao1 = new MovieInfoDAO();
		System.out.println("DAO 생성");

		MovieDTO code = dao1.selectCode(mv_seq);
		System.out.println(code);

		if (selectPoster != null && code != null) {
			System.out.println("SearchMovie 검색 성공");
			HttpSession session = request.getSession();
			session.setAttribute("selectPoster", selectPoster);

			// 사이트별 코드추출
			session.setAttribute("code", code);
			System.out.println("코드 보내기 성공");
			System.out.println(code);

			response.sendRedirect("movie.jsp");
		} else {
			System.out.println("SearchMovie 검색실패");
			System.out.println("코드 보내기 실패");
			response.sendRedirect("index.jsp");
		}

	}

}
