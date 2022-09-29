<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<p>이 페이지는 1초마다 새로고침 됩니다.</p>
	<%
		response.setIntHeader("Refresh", 1);
	%>
	<p><%=new Date() %></p>
	
</body>
</html>