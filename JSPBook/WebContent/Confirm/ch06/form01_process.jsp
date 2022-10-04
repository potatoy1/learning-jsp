<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form processing</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String email = request.getParameter("email");
	%>
<c:set var="name" value="<%=name %>" />
<c:set var="addr" value="<%=addr %>" />
<c:set var="email" value="<%=email %>" />
	<p>이름: ${name}</p>
	<p>주소: ${addr}</p>
	<p>이메일: ${email}</p>
<script type="text/javascript">
let name = "${name}";
let addr = "${addr}";
let email = "${email}";
alert("name : " + name + ", addr : " + addr + ", email : " + email);
</script>
</body>
</html>