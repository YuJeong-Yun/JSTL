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
	<h1>array.jsp</h1>
	
	<c:forEach var="food" items="${requestScope.foods }">
		${food } 
	</c:forEach>
	<hr>
	<h2>영화(Array)</h2>
	
	<table border="1">
		<tr>
			<td>순위</td>
			<td>영화 이름</td>
		</tr>
	<c:forEach var="i" begin="1" end="${requestScope.movies.size() }">
		<tr>
			<td>${i }</td>
			<td>${requestScope.movies[i-1] }</td>
		</tr> 
	</c:forEach>
	</table>
</body>
</html>