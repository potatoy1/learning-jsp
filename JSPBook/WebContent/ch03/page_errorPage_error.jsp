<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@ page isErrorPage="true" %>	<!-- exception객체 사용을 위해 필요함 -->
<!-- 이 JSP 페이지는 error페이지라고 명시 -->
<!DOCTYPE html>
<html>
<head>
<title>Directive Tag</title>
</head>
<body>
	<h4>errorPage 디렉티브 태그</h4>
	에러가 발생했습니다.
	<%=exception%>
</body>
</html>