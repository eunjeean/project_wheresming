package com.wheresming.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberDTO loginMember = (MemberDTO)session.getAttribute("loginMember");
		String mb_id = loginMember.getMb_id();
		
		System.out.println(mb_id);

		
		
		String mb_pw = request.getParameter("mb_pw");
		String mb_nick = request.getParameter("mb_nick");
		String mb_email = request.getParameter("mb_email");
		String mb_phone = request.getParameter("mb_phone");
		
		System.out.println(mb_pw);
		System.out.println(mb_nick);
		MemberDTO updateMember = new MemberDTO(mb_id,mb_pw,mb_nick,mb_email,mb_phone);
		
		InfoEditDAO dao = new InfoEditDAO();
		int cnt = dao.updateMember(updateMember);
		
		if(cnt>0) {
			System.out.println("수정성공");
			session.setAttribute("loginMember", updateMember);
			response.sendRedirect("changeInfo.jsp");
		}else {
			System.out.println("수정실패");
			response.sendRedirect("index.jsp");
		}
		
	}

}
