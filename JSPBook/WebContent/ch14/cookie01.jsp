<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<!-- cookie01_process.jsp?id=admin&passwd=1234 -->
	<form action="cookie01_process.jsp">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="text" name="passwd" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
</body>
</html>