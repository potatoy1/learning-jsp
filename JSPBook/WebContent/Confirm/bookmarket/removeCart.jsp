<%@page import="ch04.dao.BookRepository"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ch04.vo.BookVO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

	String id = request.getParameter("id");
	
	if(id==null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	BookRepository dao = BookRepository.getInstance();
	BookVO book = dao.getProductById(id);
	if(book == null){	
		response.sendRedirect("exceptionNoBookId.jsp");
		return;
	}
	
	ArrayList<BookVO> cartlist = (ArrayList<BookVO>)session.getAttribute("cartlist");
	for(int i=0;i<cartlist.size();i++){
		if(cartlist.get(i).getBookId().equals(id)){
			cartlist.remove(cartlist.get(i));
		}
	}

	response.sendRedirect("cart.jsp");
%>