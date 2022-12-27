package com.wheresming.member;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Signin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Signin() {
		super();

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nickname = request.getParameter("nickname");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");

		MemberDTO vo = new MemberDTO(id, pw, nickname, email, tel);

		SigninDAO dao = new SigninDAO();

		int cnt = dao.insertMember(vo);
		
		if(cnt>0) {
			System.out.println("회원가입 성공");
			response.sendRedirect("index.jsp");
		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect("index.jsp");
		}

	}

}
