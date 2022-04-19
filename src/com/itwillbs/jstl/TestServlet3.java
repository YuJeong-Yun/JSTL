package com.itwillbs.jstl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// http://localhost:8088/JSTL_EL5/test3
@WebServlet(value="/test3")
public class TestServlet3 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		// Person객체(이름, 나이, 휴대폰)
		// Phone 객체(모델명, 색상)
		Phone galA = new Phone("galaxyA", "black");
		Phone galS = new Phone("galaxyS", "silver");
		Phone iPhone = new Phone("iphone", "white");
		
		// 1) 1명의 사람정보를 생성하여 전달
		Person yun = new Person("유정", 24, galA);
		request.setAttribute("yun", yun);
		

		// 2) 3명의 사람정보를 생성하여 전달 (ArrayList)
		Person kim = new Person("수영", 20, iPhone);
		Person hong = new Person("길동", 22, galS);
		Person lee = new Person("지연", 30, galA);
		
		ArrayList<Person> person = new ArrayList<Person>();
		person.add(kim);
		person.add(hong);
		person.add(lee);
		
		request.setAttribute("person", person);
		
		
		// person.jsp 페이지에 출력
		RequestDispatcher dis =
				request.getRequestDispatcher("./el/person.jsp");
		dis.forward(request, response);
	}
	
}
