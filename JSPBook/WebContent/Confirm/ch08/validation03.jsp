<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<script>
function check(){
 
    var form=document.frm;
    var passwd=form.passwd.value;
    var passwdcheck=form.passwd2.value;
    var regExpPasswd=/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/;
    if(!regExpPasswd.test(passwd))
        {
        alert("영문+숫자+특수기호 8자리 이상 구성 필요");
        return false;
        }
    form.submit();
}
 
</script>
<body>
 
<form action="validation01_process.jsp" name="frm">
<p> 아이디 : <input type="text" name="id">
<p> 비밀번호 : <input type="text" name="passwd">
<p> 비밀번호 확인 : <input type="text" name="passwd2">
<input type="submit" value="전송" onclick="return check();">
</form>
 
</body>
</html>