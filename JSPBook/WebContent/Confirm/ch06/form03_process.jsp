<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	
			<h3>선택한 과일</h3><br>
		
		<%!
			String arrToStr(String[] arr){
				String str = "";
				for(String s : arr){
					str +=" " +s;	
				}
				return str;
			}
		%>
		<%
			request.setCharacterEncoding("UTF-8");
			Enumeration paramNames = request.getParameterNames();
// 			String paramValue ="";
// 			while(paramNames.hasMoreElements()){
// 				String name = (String)paramNames.nextElement();
// 				if(name.equals("fruit")){
// 					paramValue = arrToStr(request.getParameterValues(name));
// 				}else{
// 					paramValue = request.getParameter(name);
// 				}
				
// 				out.print(paramValue);
				
// 			}
			if(fruit != null){
				for(String str : fruit){
					out.print(""+str);
				}
			}
		%>

</body>
</html>