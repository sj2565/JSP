<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="login" class="Test.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*" />

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
	입력받은 아이디 정보를 빈즈 클래스를 이용해서 확인하고 처리하는 jsp
 --%>
 
 <div align =center>
 	<h2> 로그인 예제 </h2>
 	<hr>
 	<%
 		if(!login.checkUser()){
 			out.print("로그인 실패!!!!");
 		}else{
 			out.print("로그인 성공!!!!");
 		}
 	%>
 	
 	<hr>
 	
 	사용자 아이디 : <jsp:getProperty name="login" property="userid" /> <br>
 	사용자 패스워드 : <jsp:getProperty name="login" property="passwd" /> 
 	
 </div>
 
</body>
</html>