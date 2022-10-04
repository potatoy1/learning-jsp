<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="ch04.dao.BookRepository"%>
<%@page import="ch04.vo.BookVO"%>
<%
      request.setCharacterEncoding("UTF-8");
      
      String bookId = request.getParameter("bookId");
      String name = request.getParameter("name");
      int unitPirce = Integer.parseInt(request.getParameter("unitPirce"));
      String author = request.getParameter("author");
      String publisher = request.getParameter("publisher");
      String releaseDate = request.getParameter("releaseDate");
      int totalPages = Integer.parseInt(request.getParameter("totalPages"));
      String description = request.getParameter("description");
      String category = request.getParameter("category");
      int unitsInStock = Integer.parseInt(request.getParameter("unitsInStock"));
      String condition = request.getParameter("condition");

      BookRepository dao=BookRepository.getInstance();
      
      BookVO bookVO =new BookVO();
      bookVO.setBookId(bookId);
      bookVO.setName(name);
      bookVO.setUnitPrice(unitPirce);
      bookVO.setAuthor(author);
      bookVO.setPublisher(publisher);
      bookVO.setReleaseDate(releaseDate);
      bookVO.setTotalPages(totalPages);
      bookVO.setDescription(description);
      bookVO.setCategory(category);
      bookVO.setUnitsInStock(unitsInStock);
      bookVO.setCondition(condition);
     
      dao.addBook(bookVO);
      
      out.print("bookVO: " + bookVO.toString());
      
      response.sendRedirect("products.jsp");
%>
