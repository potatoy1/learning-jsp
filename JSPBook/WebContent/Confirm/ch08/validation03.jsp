<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<script type="text/javascript">
	//핸들러함수
	function checkLogin(){
		let id = document.getElementById("id").value;
		let passwd = document.getElementById("passwd").value;
		let passwdConfirm = document.getElementById("passwd2").value;
		
		//영문
		let pattern1 = /[a-zA-Z]/;
		//숫자
		let pattern2 = /[0-9]/;
		//특수기호
		let pattern3 = /[~!@\#$%^&*<>]/;
		//아이디 체킹
		if(id.length == 0){
			alert("아이디를 입력해주세요.");
			return false;
		}
		//비밀번호 체킹
		if(passwd.length == 0){ // 빈 칸
			alert("비밀번호를 입력해주세요.");
			return false;
		}else{	// 값이 있다면
			if(passwd != passwdConfirm){
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
		}
		//영문+숫자+특수기호 8자리 이상 체킹
		if(!pattern1.test(passwd)||!pattern2.test(passwd)||
		   !pattern3.test(passwd)|| passwd.length<8||passwd.length>50){
			alert("영문 +숫자+특수기호 8자리 이상으로 구성해야 합니다.");
			return false;
		}
		document.loginForm.submit();
	}
</script>
<body>
   <form name="loginForm" method="post" action="validation03_process.jsp" >
      <p>아이디 : <input type="text" name="id" id="id" /></p>
      <p>비밀번호 : <input type="text" name="passwd1" id="passwd" /></p>
      <p>비밀번호 확인 : <input type="text" name="passwd2" id="passwd2" /></p>
      <p><input type="button" value="전송" onclick="checkLogin()"/></p>
   </form>
</body>
</html>