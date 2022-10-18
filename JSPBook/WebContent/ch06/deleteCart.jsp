<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%//스크립틀릿
  //deleteCart.jsp?cartId=63D3A3114245013BAF8CE02D08FD0615 <=session.getId()
  //요청 파라미터의 cartId를 받아보자
  String id = request.getParameter("cartId"); //63D3A3114245013BAF8CE02D08FD0615
  
  //cartId가 없으면 => cart.jsp로 이동
  if(id==null || id.trim().equals("")){
	  response.sendRedirect("cart.jsp");
	  return;
  }

  //장바구니 비우기
  //session.removeAttribute("cartlist");
  session.invalidate();	 //모든 세션을 삭제
  
  response.sendRedirect("cart.jsp");

%>