<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Security</title>
</head>
<body>
<p>사용자ID: <%=request.getRemoteUser() %></p>
	<%
	if(request.isUserInRole("admin")){
		response.sendRedirect("success.jsp");
	}
	%>
	
</body>
</html>