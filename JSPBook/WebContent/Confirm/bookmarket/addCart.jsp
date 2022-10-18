<%@page import="java.util.ArrayList"%>
<%@page import="ch04.vo.BookVO"%>
<%@page import="ch04.dao.BookRepository"%>
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
		response.sendRedirect("exceptionNoProductId.jsp");
	}

	ArrayList<BookVO> list = (ArrayList<BookVO>)session.getAttribute("cartlist");
	

	if(list == null){
		list = new ArrayList<BookVO>();
		session.setAttribute("cartlist", list);
	}
	

	int cnt = 0;

	for(int i=0;i<list.size();i++){
		if(list.get(i).getBookId().equals(id)){
			cnt++;

			list.get(i).setQuantity(list.get(i).getQuantity()+1);
		}
	}

	if(cnt==0){
		book.setQuantity(1);
		list.add(book);
	}

	response.sendRedirect("product.jsp?id=" + id);
%>