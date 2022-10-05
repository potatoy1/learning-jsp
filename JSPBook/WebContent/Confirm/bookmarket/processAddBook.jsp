<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.util.List"%>
<%@page import="ch04.dao.ProductRepository"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="ch04.dao.BookRepository"%>
<%@page import="ch04.vo.BookVO"%>
<%
	request.setCharacterEncoding("UTF-8");
 
  	String path = "D:\\A_TeachingMaterial\\8.JSP\\workspace\\JSPBook\\WebContent\\resources\\images";	
  	
    DiskFileUpload upload = new DiskFileUpload();
    
   	upload.setSizeMax(1000000);	
  	upload.setSizeThreshold(4096);
   	upload.setRepositoryPath(path);
   	
  	List items = upload.parseRequest(request);
  	
  	Iterator params = items.iterator();
  	String bookId ="";
  	String name ="";
  	String unitPrice ="";
  	String author ="";
  	String publisher ="";
  	String releaseDate ="";
  	String totalPages ="";
  	String description ="";
  	String category ="";
  	String unitsInStock ="";
  	String condition ="";
  	
  	int price = 0;
  	int stock = 0;
  	int pages = 0;
  	
  	String fileName = "";
    BookRepository dao=BookRepository.getInstance();
  	while(params.hasNext()){
  		FileItem item = (FileItem)params.next();
  		if(item.isFormField()){
  			if(item.getFieldName().equals("bookId")){
  				bookId = item.getString("UTF-8");
  			}else if(item.getFieldName().equals("name")){
  				name = item.getString("UTF-8");
  			}else if(item.getFieldName().equals("unitPrice")){
  				 unitPrice = item.getString("UTF-8");
   				if(unitPrice.isEmpty()){
   						price = 0;
					}else{
						price = Integer.parseInt(unitPrice);
					}
  			}else if(item.getFieldName().equals("author")){
  				author = item.getString("UTF-8");
  			}else if(item.getFieldName().equals("publisher")){
  				publisher = item.getString("UTF-8");
  			}else if(item.getFieldName().equals("releaseDate")){
  				releaseDate = item.getString("UTF-8");
  			}else if(item.getFieldName().equals("totalPages")){
  				totalPages = item.getString("UTF-8");
  				if(totalPages.isEmpty()){
  						pages = 0;
					}else{
						pages = Integer.parseInt(totalPages);
					}
			}else if(item.getFieldName().equals("condition")){
				 condition = item.getString("UTF-8");
			
  			}else if(item.getFieldName().equals("description")){
  				description = item.getString("UTF-8");
  			}else if(item.getFieldName().equals("category")){
  				category = item.getString("UTF-8");
  			}else if(item.getFieldName().equals("unitsInStock")){
  				 unitsInStock = item.getString("UTF-8");
  				 
  				 if(unitsInStock.isEmpty()){
  						stock = 0;
  					}else{
  						stock = Integer.parseInt(unitsInStock);
  					}
  			}else if(item.getFieldName().equals("condition")){
  				 condition = item.getString("UTF-8");
  			}
  			
  		}else{
  			String fileFieldName = item.getFieldName();	
  			fileName = item.getName(); 
  			String contentType = item.getContentType(); 
  			fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
  			long fileSize = item.getSize();
  			File file = new File(path + "/" + fileName);
  			item.write(file);
  			
  			out.println("-------------------------------------<br />");
  			out.println("요청 파라미터 명: " + fileFieldName + "<br />");
  			out.println("저장 파일 명: " + fileName + "<br />");
  			out.println("파일 콘텐츠 타입: " + contentType + "<br />");
  			out.println("파일 크기: " + fileSize + "<br />");
  		}
  	}
  	
      
      BookVO bookVO =new BookVO();
      bookVO.setBookId(bookId);
      bookVO.setName(name);
      bookVO.setUnitPrice(price);
      bookVO.setAuthor(author);
      bookVO.setPublisher(publisher);
      bookVO.setReleaseDate(releaseDate);
      bookVO.setTotalPages(pages);
      bookVO.setDescription(description);
      bookVO.setCategory(category);
      bookVO.setUnitsInStock(stock);
      bookVO.setCondition(condition);
      bookVO.setFilename(fileName);
     
      dao.addBook(bookVO);
      
      out.print("bookVO: " + bookVO.toString());
      
      response.sendRedirect("products.jsp");
%>
