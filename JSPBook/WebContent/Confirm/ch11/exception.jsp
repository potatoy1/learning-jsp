<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<form action="exception_process.jsp" method="post">
		<p>아이디:<input type="text" name="id"></p>
		<p>비밀번호:<input type="text" name="pw"></p>
		<p><input type="submit" value="전송"></p>
	</form>
</body>
</html>