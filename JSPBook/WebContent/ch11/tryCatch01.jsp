<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<% //스크립틀릿
	//오류 우선순위 1)page디렉티브 2)web.xml 3)try~catch
	try{
		int num = 10 / 0;
		request.getParameter("name").toString();
	}catch(NumberFormatException e){
		RequestDispatcher dispatcher = 
		request.getRequestDispatcher("/errorNullPointer.jsp");
		//tryCatch01.jsp 실행을 멈추고, errorNullPointer.jsp를 요청 
		dispatcher.forward(request,response);
	}
	out.print("개똥이");
	%>
</body>
</html>
