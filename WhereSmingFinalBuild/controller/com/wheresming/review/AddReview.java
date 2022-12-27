package com.wheresming.review;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wheresming.member.MemberDTO;
import com.wheresming.movie.MovieDTO;
import com.wheresming.search.SearchDTO;

public class AddReview extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public AddReview() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		MemberDTO loginMember = (MemberDTO)session.getAttribute("loginMember");
		MovieDTO searchMovie = (MovieDTO)session.getAttribute("selectPoster");

		int mv_seq = searchMovie.getMv_seq();
		String cmt_content = request.getParameter("comment");
		// time : SYSDATE
		String mb_nick = loginMember.getMb_nick();
		String mb_id = loginMember.getMb_id();
		int cmt_likes = 0;
		int cmt_score = 0;
		
		System.out.println("게시물 작성자 닉네임 : " + mb_nick);
		System.out.println("작성한 리뷰의 시퀀스 번호 : " + searchMovie.getMv_seq());
		System.out.println("작성 리뷰 내용 : " + cmt_content);
		System.out.println();
		
		AddReviewDAO dao = new AddReviewDAO();
		ReviewDTO vo = new ReviewDTO(mv_seq, cmt_content, mb_nick, mb_id, cmt_likes, cmt_score);

		int cnt = dao.insertReview(vo);
		
		if (cnt > 0) {
			System.out.println("리뷰 작성 성공");
			response.sendRedirect("movie.jsp");
		} else {
			System.out.println("리뷰 작성 실패");
			response.sendRedirect("movie.jsp");
		}

	}

}
