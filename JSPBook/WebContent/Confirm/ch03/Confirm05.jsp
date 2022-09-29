<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%@include file="/header.jsp" %>
	  <% Date day=new java.util.Date();%>
    	Current Time: <%=day %>
</body>
</html>