package com.wheresming.review;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.wheresming.member.MemberDTO;
import com.wheresming.movie.MovieDTO;
import com.wheresming.search.SearchDTO;
import com.wheresming.search.Searching;

public class ReviewViewer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReviewViewer() {
		super();

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		MovieDTO searchMovie = (MovieDTO)session.getAttribute("selectPoster");
		
		ReviewViewerDAO dao = new ReviewViewerDAO();
		
		int mv_seq = searchMovie.getMv_seq();
		int mv_cnt = dao.countReturn(mv_seq);
		
				
		
		System.out.println(mv_cnt);

		
		response.sendRedirect("test.jsp");
		
	}

}
