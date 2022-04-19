package com.itwillbs.jstl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// http://localhost:8088/JSTL_EL5/test2
public class TestServlet2 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String[] foods ={"삼겹살", "짜장면", "햄버거", "피자", "아이스커피"};
		
		request.setAttribute("foods", foods);
		
		// ArrayList 영화
		ArrayList<String> movies = new ArrayList<String>();
		movies.add("아이언맨");
		movies.add("해리포터");
		movies.add("어벤져스");
		movies.add("수퍼 소닉");
		movies.add("이상한 나라의 수학자");
		movies.add("스텔라");
		
		request.setAttribute("movies", movies);
		
		// array.jsp 에 foods 데이터를 모두 화면에 출력
		RequestDispatcher dis =
				request.getRequestDispatcher("./el/array.jsp");
		dis.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
	}
	
	

}
