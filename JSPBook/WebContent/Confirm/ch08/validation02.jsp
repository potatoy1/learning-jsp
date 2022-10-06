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
    if(passwd!=passwdcheck)
        {
        alert("비밀번호 다시 확인");
        return false;
        }
    if(/(\w)\1\1/.test(passwd))
        {
        alert("영문,숫자는 3자 이상 연속 입력 불가능");
        form.passwd.focus();
        return false;
        }
    form.submit();
}
 
</script>
<body>
 
<form action="validation02_process.jsp" name="frm">
<p> 아이디 : <input type="text" name="id">
<p> 비밀번호 : <input type="text" name="passwd">
<p> 비밀번호 확인 : <input type="text" name="passwd2">
<input type="button" value="전송" onclick="return check();">
</form>
 
</body>
</html>
