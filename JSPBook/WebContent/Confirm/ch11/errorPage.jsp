<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="isErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<!-- .toUpperCase() : 여기서 오류 발생. null을 대문자로 변환 불가 -->
	name : <%=request.getParameter("name").toUpperCase() %>
</body>
</html>