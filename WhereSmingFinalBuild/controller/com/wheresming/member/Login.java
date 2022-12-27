package com.wheresming.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wheresming.review.AddReview;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 1. id,pw 받기
				request.setCharacterEncoding("UTF-8");
				
				String mb_id = request.getParameter("mb_id");
				String mb_pw = request.getParameter("mb_pw");
				// 2. Member 객체 생성(id,pw)
				MemberDTO vo = new MemberDTO(mb_id, mb_pw);
				// 3. MemberDAO 객체 생성
				LoginDAO dao = new LoginDAO();
				
				// 4. dao.selectMember() 메서드 호출
				MemberDTO loginMember = dao.selectMember(vo);
								
				// 5. 세션저장
				
				if(loginMember!=null) {  // 로그인 성공
					System.out.println("로그인성공");
					System.out.println("로그인한 사용자 : " + vo.getMb_id());
					HttpSession session = request.getSession();
					session.setAttribute("loginMember",loginMember);
					response.sendRedirect("index.jsp");
				} else { // 로그인 실패
					System.out.println("로그인실패");
					response.sendRedirect("login.jsp");
				}
			
			}
	
	}

