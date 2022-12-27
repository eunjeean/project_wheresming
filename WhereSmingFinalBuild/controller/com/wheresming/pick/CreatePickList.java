package com.wheresming.pick;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wheresming.member.MemberDTO;
import com.wheresming.search.SearchDTO;

public class CreatePickList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CreatePickList() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		MemberDTO loginMember = (MemberDTO) session.getAttribute("loginMember");

		String foldername = request.getParameter("folder");
		String memberID = loginMember.getMb_id();
		String memberNick = loginMember.getMb_nick();

		PickListDTO vo = new PickListDTO(foldername, memberID, memberNick);
		CreatePickListDAO dao = new CreatePickListDAO();

		int result = dao.createPickList(vo);

		if (result > 0) {
			System.out.println("폴더생성완료");
			System.out.println("폴더 네임 : " + foldername);
			System.out.println("생성한 유저 아이디 : " + memberID);
			System.out.println("생성한 유저의 닉네임 : " + memberNick);
			
			session.setAttribute("PickListAttribute", vo);
			response.sendRedirect("movie.jsp");
			
		} else {
			System.out.println("폴더생성실패");
			response.sendRedirect("movie.jsp");
		}

	}

}
