<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title></title>
</head>
<script type="text/javascript">
	function CheckForm() {
		alert("아이디 : " + document.loginForm.id.value + "\n" +  "비밀번호 : " + document.loginForm.passwd.value);
	}
</script>
<body>	
	<form name="loginForm" action="#" method="post">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="passwd">
		<p><input type="submit" value="전송" onclick="CheckForm()">
	</form>
</body>
</html>