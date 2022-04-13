package com.itwillbs.jstl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import com.itwillbs.bean.MemberBean;

// http://localhost:8088/JSTL_EL5/jstl1
public class Servlet1 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Servlet1-doGet() 호출");
		// "test"-"100"  => set2.jsp 페이지로 전달
		
		// request 영역에 정보를 저장
		request.setAttribute("test", "100");
		System.out.println("request 영역에 정보 저장완료!");
		
		
		// MemberBean 객체를 생성해서 정보 저장후 set2.jsp로 전달해서 출력
		MemberBean mb = new MemberBean();
		mb.setAddr("부산");
		mb.setGender("여");
		mb.setId("admin");
		mb.setName("yj");
		mb.setPw("1234");
		
		request.setAttribute("MemberBean", mb);
		
		// 페이지 이동 set2.jsp
		//		액션태그는 jsp 페이지에서만 사용가능
		RequestDispatcher dis
				= request.getRequestDispatcher("./jstl_core/set2.jsp");
		
		dis.forward(request, response);
	}

}
