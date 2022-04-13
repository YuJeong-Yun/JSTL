<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>set1.jsp</h1>
	<!-- 자바코드, 정수변수2개의 합을 화면에 출력 -->
	<%
		// service() - 지역변수 => set1.jsp 페이지에서만 사용 가능
		int n1=100;
		int n2=100;
	%>
	합 : <%=n1+n2 %>

	<hr>
	<%-- <c:set var="변수이름" value="값"/> 
		변수가 아니라, 속성을 생성하는 것(Attribute)
		
		pageContext.setAttribute("이름","값")
	--%>
	<c:set var="num1" value="100"/>
	<c:set var="num2" value="200"/>
	
	합(JSTL) : <c:out value="${num1+num2}"/> <br>
	HTML : ${num1+num2} <br>
	
	<!-- JSP코드랑 EL표현식 같이 사용 안 됨 -->
	${n1} + ${n2} = ${n1+n2} <br>
	<%=n1 %> + <%=n2 %> = <%=n1+n2 %> <br>
	
	
	
	<hr>
	<h2>request 영역에 정보를 저장</h2>
	
	<%
		request.setAttribute("name", "ITWILL");
		session.setAttribute("name", "BUSAN");
	%>
	<c:set var="age" value="20" scope="request"/>
	<c:set var="tel" value="010-1234-5678" scope="request"/>
	
	<!-- 페이지 이동 -->
	<h2>액션태그를 사용한 forward 이동</h2>
	<!-- 
		페이지 이동시 주소의 변경 x,
		request 영역정보를 전달 가능함
	 -->
<%-- 	<jsp:forward page="set2.jsp"/> --%>
	
	
</body>
</html>