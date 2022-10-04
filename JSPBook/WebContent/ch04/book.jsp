<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@page import="ch04.vo.BookVO"%>
<%@page import="ch04.dao.BookRepository"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<%//스크립틀릿 태그 
	// 기본적으로 3개의 상품이 들어 있는 객체 생성
	BookRepository bookDAO = BookRepository.getInstance();
	// SELECT * FROM PRODUCT
	List<BookVO> listOfBooks = bookDAO.getAllBooks();
%>
<!-- 아스가르드에서 Earth로 소환 -->
<!-- scope : 영역 
	page(jsp), request(동일 요청), session(동일 웹브라우저), application(모든 웹브라우저)
-->
<c:set var="listOfBooks" value="<%=listOfBooks%>" scope="page" />
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<!-- 머리글에 해당하는 menu.jsp 파일의 내용을 포함하도록 include 액션 태그를 작성 -->
	<jsp:include page="../ch06/menu.jsp" />
	<div class = "jumbotron">
		<!-- 내용 들어온다. -->
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<!-- ==================상품 목록 시작================== -->
	<div class="container">
		<div >
			<!-- List<BookVO>에서 한 행을 꺼내오면 BookVO -->
			<c:forEach var="bookVO" items="${listOfBooks}">
				<div >
					<h5>${bookVO.name}<br><br></h5>
					<p>${bookVO.description}</p>
					<p>${bookVO.author}
					${bookVO.publisher}
					${bookVO.unitPrice}<hr></p>
					<!-- 상품 아이디에 대한 상세 정보 페이지가 연결되도록 상세 정보 버튼 작성 -->
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- ==================상품 목록 끝================== -->
	<jsp:include page="../ch06/footer.jsp" />
</body>
</html>