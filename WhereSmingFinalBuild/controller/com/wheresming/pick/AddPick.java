package com.wheresming.pick;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wheresming.member.MemberDTO;
import com.wheresming.movie.MovieDTO;


public class AddPick extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		MemberDTO loginMember = (MemberDTO)session.getAttribute("loginMember");
		MovieDTO movieseq = (MovieDTO)session.getAttribute("selectPoster");
		String foldername = request.getParameter("foldername");
		System.out.println("도착");
		int mv_seq= movieseq.getMv_seq();
		String mb_nick= loginMember.getMb_nick();
		String mb_id= loginMember.getMb_id();
		String fd_name= foldername;

		System.out.println(mb_nick+mb_id+fd_name+mv_seq);
		
		AddPickDTO vo = new AddPickDTO(mv_seq, mb_nick,mb_id,fd_name);
		AddPickDAO dao = new AddPickDAO();

		int result = dao.AddPick(vo);

		if (result > 0) {
			System.out.println("찜생성완료");
			System.out.println("영화번호 : " + mv_seq);
			System.out.println("생성한 유저 아이디 : " + mb_nick);
			System.out.println("폴더네임 : " + fd_name);
			
			session.setAttribute("mypicksList", vo);
			response.sendRedirect("mypage.jsp");
			
		} else {
			System.out.println("찜실패");
			response.sendRedirect("movie.jsp");
		}

	}

	

	
}
