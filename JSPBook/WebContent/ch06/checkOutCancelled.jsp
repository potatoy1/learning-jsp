<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<title>주문 취소</title>
</head>
<body>
<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문정보</h1>
		</div>
	</div>
	<!-- ----------------주문 취소 시작---------------- -->
	<%
		//기존 session제거 후 새로 생성
		session.invalidate();
	%>
	<div class="container">
		<h2 class="alert alert-danger">주문이 취소되었습니다.</h2>
	</div>
	<div class="container">
		<p><a href="products.jsp" class="btn btn-secondary">&laquo;상품 목록</a></p>
	</div>
	<!-- ----------------주문 취소 끝---------------- -->
	<!-- 끝맺음 -->
	<jsp:include page="/ch06/footer.jsp" />
</body>
</html>