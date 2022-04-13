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
	<h1>if.jsp</h1>
	
	<c:set var="i" value="100"/>
	
	<c:if test="${i==100}">
		100!!
	</c:if>
	
	<h2>변수 2개 중에서 더 큰 값은?</h2>
	<c:set var="num1" value="1000"></c:set>
	<c:set var="num2" value="2000"></c:set>
	
	<c:if test="${num1 > num2 }">
		${num1 } 더 크다<br>
	</c:if>
	
	<c:if test="${num1 < num2 }">
		${num2 } 더 크다<br>
	</c:if>
	
	<hr>
	<%
		int n1 = Integer.parseInt(request.getParameter("n1"));
		int n2 = Integer.parseInt(request.getParameter("n2"));
		if(n1 > n2) {
			out.println(n1+" 더 크다");
		} else {
			out.println(n2+" 더 크다");
		}
	%>
	
	<hr>
	<h2>EL표현식으로 파라메터의 값에 접근 가능 (데이터 형변환 자동)</h2>
	${param.n1 } / ${param.n2 } => 파라메터의 합 : ${param.n1 + param.n2}
	<hr>
	
	${param.n1 > param.n2}
	${param.n1 gt param.n2}
	
	
	
	<h1>JSTL - choose</h1>
<%-- 	<c:choose> --%>
<%-- 		<c:when test=""> --%>
		
<%-- 		</c:when> --%>
<%-- 		<c:when test=""> --%>
		
<%-- 		</c:when> --%>
<%-- 		<c:otherwise> --%>
		
<%-- 		</c:otherwise>		 --%>
<%-- 	</c:choose> --%>

<!-- 전달되는 2개의 파라메터값 데이터 비교(>, <, ==) -->
	<c:choose>
		<c:when test="${param.n1 > param.n2 }">
			${param.n1 } 더 큰값	
		</c:when>
		<c:when test="${param.n1 < param.n2 }">
			${param.n2 } 더 큰값	
		</c:when>
		<c:otherwise>
			${param.n1 } 같은 값
		</c:otherwise>
	</c:choose>
</body>
</html>