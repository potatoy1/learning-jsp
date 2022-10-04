<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ch04.vo.BookVO"%>
<%@page import="java.util.List"%>
<%@page import="ch04.dao.BookRepository"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
   //기본적으로 3개의 책이 생성되어 있는 객체 생성
   BookRepository bookDAO = BookRepository.getInstance();
   //SELECT * FROM BOOK
   List<BookVO> listOfBooks = bookDAO.getAllBooks();
%>
<c:set var="listOfBooks" value="<%=listOfBooks%>" scope="page" />
<html>
<head>
<link rel="stylesheet" 
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
   <!-- 머리글에 해당하는 menu.jsp 파일의 내용을 포함하도록
   include 액션 태그를 작성 -->
   <jsp:include page="menu.jsp" />
   <div class="jumbotron">
      <!-- 내용 들어온다 -->
      <div class="container">
         <h1 class="display-3">도서 목록</h1>
      </div>
   </div>
   <!--============= 도서 목록 시작 ================-->
   <div class="container">
   	<div class="row" style="justify-content:right;margin:0 0 30px 0;">
			<a href="addBook.jsp" class="btn btn-primary"
			style="float:right;clear:both;">도서 추가</a>
	</div>
      <div class="row" align="left">
         <c:forEach var="bookVO" items="${listOfBooks}">
         <div class="col-md-4">
					<img alt="${bookVO.name}" title="${bookVO.name}" src="/resources/images/${bookVO.filename}" style="width:80%;">
					<h3>${bookVO.name}</h3>
					<p>${bookVO.description}</p>
					<p>${bookVO.unitPrice}</p>
					<!-- 상품 아이디에 대한 상세 정보 페이지가 연결되도록 상세 정보 버튼 작성 -->
					<p><a href ="product.jsp?id=${bookVO.bookId}" class= "btn btn-secondary" role="button">상세정보&raquo;</a></p>
				</div>
         </c:forEach>
      </div>
   </div>
   <!--============= 도서 목록 끝==================-->
   <jsp:include page="footer.jsp" />
</body>
</html>