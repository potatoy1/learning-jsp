<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	<%
		//문자 인코딩 유형을 utf-8로 작성
		request.setCharacterEncoding("UTF-8");
	
		//입력된 아이디와 비밀번호를 폼 문으로부터 전송
		String userid = request.getParameter("name");
		String password = request.getParameter("passwd");
	%>
	<!-- 폼 문으로부터 전송받은 아이디와 비밀번호를 출력하도록 표현문 태그를 작성 -->
	<p>아이디: <%=userid%></p>
	<p>비밀번호: <%=password%></p>
</body>
</html>