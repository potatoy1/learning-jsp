<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String user_id = (String)session.getAttribute("userID"); 
		if(user_id.equals("")){
			response.sendRedirect("session_out.jsp");
		}else{
		out.println(user_id + "님 반갑습니다.");
		out.println("<a href='session_out.jsp'>로그아웃</a>");
		}
	%>
</body>
</html>