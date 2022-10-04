<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
		<%
			request.setCharacterEncoding("UTF-8");
			Enumeration paramNames = request.getParameterNames();
			String paramValue ="";
			while(paramNames.hasMoreElements())
			{
				String name = (String)paramNames.nextElement();
				String pValue=request.getParameter(name);
				out.println(name+":"+pValue +"<br>");
			}
		%>
</body>
</html>