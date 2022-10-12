<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>상품 아이디 오류</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
</head>
<body>
<!-- 상품이 없을때 보여줄 오류 페이지 -->
	<jsp:include page="menu.jsp" />
		<div class = "jumbotron">
		<!-- 내용 들어온다. -->
		<div class="container">
			<h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL() %>?<%=request.getQueryString() %></p>
		<p><a href="products.jsp" class="btn btn-secondary">상품목록&raquo;</a></p>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>