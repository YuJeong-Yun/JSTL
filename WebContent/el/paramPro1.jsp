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
	<h1>paramPro1.jsp</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String name =  request.getParameter("name");
		out.print("이름(jsp-out print) :" +name);
	%>
	<br> 
	이름(jsp-표현식) : <%=name %> <br>
	이름(el-표현식) : ${name } <br>
	이름(el-표현식) : ${param.name } <br>
	
	<hr>
	<%
		int age = Integer.parseInt(request.getParameter("age"));
		out.print("나이(jsp-out print) :"+age);
	%>
	<br>
	나이 : <%=age+100 %> <br>
	나이 : <%=request.getParameter("age")+100%> <br>
	나이 : ${param.age+100 } 
		=> 전달되는 타입의 형태로 형 변환
		
	<hr>
	<%
		String[] hobbys = request.getParameterValues("hobby");
	
		if(hobbys != null) {			
			for(int i=0; i<hobbys.length; i++) {
			%>
				취미<%=i %> : <%=hobbys[i] %><br>
			<%
			}
		}
	%>
	
	<hr>
	<h2>el 표현식 사용 취미 출력</h2>
	<h2>JTSL + EL 표현식</h2>
	<c:forEach var="i" items="${paramValues.hobby }">
		취미 : ${i } <br>
	</c:forEach>

</body>
</html>