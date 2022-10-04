<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%	//스크립틀릿
	//1) 폼 페이지에서 전송된 파일을 저장할 서버의 경로를 작성
	String fileUploadPath = "C:\\upload";
	//2) 파일 업로드를 위해 Commons-fileUpliad 패키지에
	//포함되어 있는 DiskFileUpload 객체를 생성
	DiskFileUpload upload = new DiskFileUpload();
	
	//업로드 객체 환경설정
	upload.setSizeMax(1000000); //최대 크기
	upload.setSizeThreshold(4096); //메모리상에 저장할 최대 크기(4kb)
	upload.setRepositoryPath(fileUploadPath); //업로드된 파일을 임시로 저장할 경로
	
	//3) 웹 브라우저가 전송한 mulipart/form-data 유형의 요청 파라미터를 가져옴
	//폼 페이지에서 전송된 요청 파라미터를 전달받음
	//parse(파싱) : 구문분석 + 의미분석
	List items = upload.parseRequest(request);
	//4) 폼 페이지에서 전송된 요청 파라미터를 Iterator 클래스로 변환
	Iterator params = items.iterator();
	//5) 폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복
	while(params.hasNext()){
		//6) FileItem 클래스의 메소드를 사용하여
		//요청 파라미터가 일반 데이터이니지 파열이지 분석 및 처리
		FileItem fileItem = (FileItem)params.next();
		//FormField : input type="text"/ chekbox/..
		if(fileItem.isFormField()){	//일반 데이터라면(name,subject)
			//name=개똥이&subject=개똥이콘서트
			String name = fileItem.getFieldName(); //파라미터의 이름
			String value = fileItem.getString("UTF-8"); //파라미터의 값(개똥이, 개똥이 콘서트)
			out.println(name + "=" + value + "<br />");
		}else{//일반 데이터가 아니면 파일 일것임(filename)
			String fileFieldName = fileItem.getFieldName(); //요청 파라미터의 이름(filename)
			String contentType = fileItem.getContentType(); //파일 콘텐츠 유형(MIME 타입)
			long fileSize = fileItem.getSize(); //파일 크기
			//7) 클라이언트에서 업로드 할 대상 찾기
			//fileName " 
			String fileName = fileItem.getName();		
			fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
			//8) 서버로 업로드
			//c:\\upload + "/"+ mudo01.jpg
			//준비작업 완료
			File file = new File(fileUploadPath+"/"+fileName);
			//서버로 복사 실행
			fileItem.write(file);
			//<input type = "file" name ="filename" />
			out.println("-------------------------------<br />");
			out.println("요청 파라미터 이름 : " + fileFieldName + "<br />"); //filename
			out.println("저장 파일 이름: " + fileName + "<br />"); //yujin4.jpg
			out.println("파일 콘텐츠 타입: " + contentType + "<br />"); //images/jpeg
			out.println("파일 크기: " +fileSize);
		}
	}
	%>	