<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>set2.jsp</h2>
	
	<%
		String name = (String)request.getAttribute("name");
		String age = ((String)request.getAttribute("age"));
		String tel = (String)request.getAttribute("tel");
	%>
	이름 : <%=name %> <br>
	나이 : <%=age %> <br>
	전화번호 : <%=tel %> <br>
	
	<hr><hr>
	<h2> El 표현식을 사용하여 출력</h2>
	이름 : ${requestScope.name} <br>
	나이 : ${age +1} <br>
	전화번호 : ${tel} <br>
	
 	<h3> EL표현식은 영역객체 (page-request-session-application) 접근이 가능</h3>
 	
 	1 : ${requestScope.name } <br>
 	2 : ${name } <br>
 	3 : ${sessionScope.name } <br>
 	
 	<h3>다른영역에 동일한 이름의 속성은 사용 X</h3>
 	
 	<!-- 영역객체에 저장된 데이터를 삭제
 		request 영역에 있는 데이터 삭제(name) -->
 
 	<c:remove var="name" scope="request"/>
 	
 	1 : ${requestScope.name } <br>
 	2 : ${name } <br>
 	3 : ${sessionScope.name } <br>
 	
 	<hr>
 	<h2>Servlet에서 전달해준 정보를 저장 </h2>
 	<%
 		String test = (String)request.getAttribute("test");
 	%>
 	JSP 표현식 : <%=test %> <br>
 	
 	EL 표현식(영역 표시) : ${requestScope.test } <br>
 	EL 표현식(영역 생략) : ${test } <br>
 	 
 	<br> 	
 	${requestScope.MemberBean } <br>
 	${MemberBean.id } <br>
 	${MemberBean.pw } <br>
 	${MemberBean.name } <br>
 	${MemberBean.gender } <br>
 	${MemberBean.addr } <br>
 	
 		
</body>
</html>