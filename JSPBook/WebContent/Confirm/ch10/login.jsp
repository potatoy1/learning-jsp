<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Security</title>
</head>
<body>
	<%
	session.invalidate();
	response.sendRedirect("addProduct.jsp");
	%>
	</form>
</body>
</html>