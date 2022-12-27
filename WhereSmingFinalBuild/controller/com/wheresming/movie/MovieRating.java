package com.wheresming.movie;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wheresming.member.MemberDTO;

public class MovieRating extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		MemberDTO loginMember = (MemberDTO) session.getAttribute("loginMember");
		MovieDTO MovieSEQ = (MovieDTO) session.getAttribute("selectPoster");

		int mv_seq = MovieSEQ.getMv_seq();
		String mb_id = loginMember.getMb_id();
		String mb_nick = loginMember.getMb_nick();
		int rating = Integer.parseInt(request.getParameter("rating"));

		MovieRatingDTO vo = new MovieRatingDTO(mv_seq, mb_id, mb_nick, rating);
		MovieRatingDTO vi = new MovieRatingDTO(mv_seq, mb_nick);
		MovieRatingDAO dao = new MovieRatingDAO();

		int result = dao.addRating(vo, vi);

		if (result > 0) {
			System.out.println("평점등록 : " + MovieSEQ.getMv_title());
			System.out.println("평점입력 사용자 : " + loginMember.getMb_nick());
			System.out.println("평점 : " + rating);
			response.sendRedirect("movie.jsp");
		} else {
			System.out.println("이미 평점을 등록한 사용자는 평점을 추가할 수 없음");
			response.sendRedirect("movie.jsp");
		}

	}

}