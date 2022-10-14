<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filter</title>
</head>
<body>
	<!--필터를 통과함  -->
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("passwd");
	
	String message = "";

	if(id.equals("admin") && pw.equals("admin1234")){
		//세션객체의 userID라는 속성 명에 id 값을 매핑해줌
		session.setAttribute("userID", id);
		message="로그인 성공";
	}else{
		message="로그인 실패";
	}
	%>
	

</body>
</html>