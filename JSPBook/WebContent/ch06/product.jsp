<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@page import="ch04.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="ch04.dao.ProductRepository"%>
<!DOCTYPE html>
<%//스크립틀릿 태그 
	String id = request.getParameter("id");
	ProductRepository productRepository = ProductRepository.getInstance();
	//상세보기 => 1행(ProductVO)을 리턴
	//SELECT * FROM PRODUCT WHERE PRODUCT_ID = 'P1234'
	ProductVO productVO = productRepository.getProductById(id);
%>

<c:set var="productVO" value="<%=productVO%>" scope="page" />
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<fmt:setLocale value="${param.language}" />
	<fmt:bundle basename="bundle.message" >
	<!-- 머리글에 해당하는 menu.jsp 파일의 내용을 포함하도록 include 액션 태그를 작성 -->
	<jsp:include page="menu.jsp" />
	<div class = "jumbotron">
		<!-- 내용 들어온다. -->
		<div class="container">
			<h1 class="display-3"><fmt:message key="productDetail" /></h1>
		</div>
	</div>
	<!-- ==================상품 상세 시작================== -->
	<div class="container">
	<div class="text-right">
			<a href="?id=${param.id}&language=ko">Korea</a>|<a href="?id=${param.id}&language=en">English</a>
		</div>
		<div class="row" align="center">
		 <img alt="${productVO.pname}" title="${productVO.pname}" src="/resources/images/${productVO.filename}" style="width:200px;">
			<div class ="col-md-6">
			<h3>${productVO.pname}</h3>
			<p>${productVO.description}</p>
			<p>
				<b><fmt:message key="productId" /></b>
				<span class ="badge badge-danger">${productVO.productId}</span>
			</p>
			<p><b><fmt:message key="manufacturer" />:</b>${productVO.manufacturer}</p>
			<p><b><fmt:message key="category" />:</b>${productVO.category}</p>
			<p><b><fmt:message key="unitsInStock" />:</b>${productVO.unitsInStock}</p>
			<h4>${productVO.unitPrice}<fmt:message key="won" /></h4>
			<p>
				<a href="#" class="btn btn-info"><fmt:message key="productOrder" />&raquo;</a>
				<a href="products.jsp" class="btn btn-secondary"><fmt:message key="productList" />&raquo;</a>
			</p>
			</div>
		</div>
	</div>

	<!-- ==================상품 상세 끝================== -->
	<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>