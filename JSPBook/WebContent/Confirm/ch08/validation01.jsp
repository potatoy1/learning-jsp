<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
	function checkLogin() {
		let form = document.loginForm;
	
		if(form.id.value == ""){
			alert("아이디(또는 비밀번호)를 입력해주세요")
			form.id.focus(); 
			return;
		}
		if(form.passwd.value == ""){
			alert("아이디(또는 비밀번호)를 입력해주세요")
			form.passwd.select();
			return;
		}else if((form.passwd.value).search(form.id.value)>-1){
		 	alert("비밀번호는 ID를 포함할 수 없습니다.");
	        return;
		} 
		form.submit();
	}
</script>
</head>
<body>
	<form name="loginForm" action="validation01_process.jsp" method="post">
		<p>아이디: <input type = "text" name = "id" /></p>
		<p>비밀번호: <input type = "password" name = "passwd" /></p>
		<p><input type = "button" value = "전송" onclick="checkLogin()" /></p>
	</form>
</body>
</html>