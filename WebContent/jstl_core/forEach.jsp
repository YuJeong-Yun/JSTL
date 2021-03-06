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
	<h1>forEach.jsp</h1>
	<!-- JSP코드 사용 화면에 "Hello" 메세지 출력 -->
	<%
		for(int i=0; i<10; i++) {
			out.print("Hello <br>");
		}
		
		// forEach 구문 / 확장 for문
		// 	for(:컬렉션, 배열) {

		// 	}
	%>
	<c:forEach begin="1" end="10" step="1">
		ITWILL! <br>
	</c:forEach>
	
	<hr>
	<h2>1~10 까지 숫자 가로 출력</h2>
	<c:forEach var="i" begin="1" end="10" step="1"  >
		${i }
	</c:forEach>
	<br>
	
	<!-- 1~20까지 숫자 중에서 홀수만 출력 -->
	<c:forEach var="i" begin="1" end="20" step="2" >
		${i }
	</c:forEach>
	<hr>
	
	<c:forTokens var="data" items="a.b.c.d.e.f.g" delims="." >
		${data }
	</c:forTokens>
	
	<hr>
	<h1>Servlet1에서 생성한 ArrayList를 화면에 출력</h1>
	<c:forEach var="mb" items="${sessionScope.memberLists }">
		${mb.id }		
		${mb.pw }		
		${mb.name }		
		${mb.gender }		
		${mb.addr }		
		<br>
	</c:forEach>
</body>
</html>