package com.wheresming.pick;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wheresming.member.MemberDTO;

public class UploadPickList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UploadPickList() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		MemberDTO loginMember = (MemberDTO)session.getAttribute("loginMember");
		PickListViewerDTO pickList = (PickListViewerDTO)session.getAttribute("mypicksAllList");
		
		
		String mb_id = loginMember.getMb_id();
		String fd_name = pickList.getFd_name();
		
		UploadPickListDTO vo = new UploadPickListDTO(mb_id, fd_name);
		UploadPickListDAO dao = new UploadPickListDAO();
		
		int result = dao.uploadPickList(vo);
		
		if(result > 0) {
			System.out.println("업로드 성공");
		} else {
			System.out.println("업로드 실패");
		}
		
		

	}

}
