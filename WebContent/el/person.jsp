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
	<h1>person.jsp</h1>
	
	이름 : ${requestScope.yun.name } <br>
	나이 : ${requestScope.yun.age } <br>
	휴대폰 : 모델(${requestScope.yun.ph.model }), 색상(${requestScope.yun.ph.color }) <br> 
	
	<hr>
	<c:forEach var="person" items="${requestScope.person }">
		 이름 : ${person.name } <br>
		 나이 : ${person.age } <br>
		 휴대폰 : 모델(${person.ph.model }), 색상(${person.ph.color }) <br>
		 <br>
	</c:forEach>
	
</body>
</html>