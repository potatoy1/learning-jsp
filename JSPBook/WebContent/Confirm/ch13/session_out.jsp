<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
<% 
	response.sendRedirect("session.jsp");
%>	
</body>
</html>