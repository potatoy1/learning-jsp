<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%//스크립틀릿
	Cookie[] user_id = request.getCookies();
	if(user_id[0] == null){
		response.sendRedirect("cookie_out.jsp");
	}
	out.println(user_id[0].getValue()+ "님 반갑습니다.");
	out.println("<a href='cookie_out.jsp'>로그아웃</a>");
	%>
</body>
</html>