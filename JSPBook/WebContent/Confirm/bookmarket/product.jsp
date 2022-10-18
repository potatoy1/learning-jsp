<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page import="ch04.vo.BookVO"%>
<%@ page import="ch04.dao.BookRepository"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<!DOCTYPE html>
<%
	String id = request.getParameter("id").toString();
   
   BookRepository bookRepository = BookRepository.getInstance();//객체 생성
   
   BookVO bookVO = bookRepository.getProductById(id);
%>
<c:set var="bookVO" value="<%=bookVO %>" scope="page" />
<html>
<head>
<link rel="stylesheet" 
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
<script type="text/javascript">
	function addToCart(){
		console.log("왔다");
		let result =  confirm("상품을 장바구니에 추가하시겠습니까?");
		
		if(result){
			console.log("true");
			document.addForm.submit();
		}else{
			console.log("false");
			document.addForm.reset();
		}
	}
	</script>
</head>
<body>
	<fmt:setLocale value="${param.language}" />
	<fmt:bundle basename="bundle.bookmessage" >
<jsp:include page="menu.jsp" />
<div class="jumbotron">
      <div class="container">
         <h1 class="display-3">도서 목록</h1>
      </div>
   </div>
   <!--============= 도서 목록 시작 ================-->
      <div class="container">
      <div class="row" align="left">
      <img alt="${bookVO.name}" title="${bookVO.name}" src="/resources/images/${bookVO.filename}" style="width:200px;">
            <div class="col-md-6">
               <h3>${bookVO.category}${bookVO.name}</h3>
               <p>${bookVO.description}</p>
               <p>
                  <b>도서 코드 : </b>
                  <span class = "badge badge-danger">${bookVO.bookId}</span>
               </p>
               <p><b>출판사  </b> : ${bookVO.publisher}</p>
               <p><b>저자  </b> : ${bookVO.author}</p>
               <p><b>재고수  </b> : ${bookVO.unitsInStock}</p>
               <p><b>총 페이지수 </b> : ${bookVO.totalPages}</p>
               <p><b>출판일  </b> : ${bookVO.releaseDate}</p>
               <h4>${bookVO.unitPrice}원</h4>
               <p>
                 <form name="addForm" action="addCart.jsp?id=${bookVO.bookId}" method="post">
				<!-- 상품 주문 -> 상품을 장바구니에 넣음 -->
				<a href="#" class="btn btn-info" onclick="addToCart()"><fmt:message key="bookOrder" />&raquo;</a>
				<!-- 장바구니에 넣어진 상품 목록을 봄 -->
				<a href="cart.jsp" class = "btn btn-warning">장바구니&raquo;</a>
				<!-- 등록된 상품 목록을 봄 -->
				<a href="products.jsp" class="btn btn-secondary"><fmt:message key="bookList" />&raquo;</a>
			</form>
            </p>
            </div>
      </div>
   </div>
   
   <!--============= 도서 목록 끝==================-->
   <jsp:include page="footer.jsp" />
   </fmt:bundle>
</body>
</html>