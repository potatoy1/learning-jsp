<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true" %>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<h3>오류 발생</h3>
	<table border="1">
		<tr>
			<th>Error:</th>
			<td><%=exception.getClass().getName() %>: <%=exception.getMessage() %></td>
		</tr>
		<tr>
			<th>URI:</th>
			<td><%=request.getRequestURI() %></td>
		</tr>
		<tr>
			<th>Status code:</th>
			<td><%=response.getStatus() %></td>
		</tr>
	</table>
</body>
</html>