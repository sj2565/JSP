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
	�Է¹��� ���̵� ������ ���� Ŭ������ �̿��ؼ� Ȯ���ϰ� ó���ϴ� jsp
 --%>
 
 <div align =center>
 	<h2> �α��� ���� </h2>
 	<hr>
 	<%
 		if(!login.checkUser()){
 			out.print("�α��� ����!!!!");
 		}else{
 			out.print("�α��� ����!!!!");
 		}
 	%>
 	
 	<hr>
 	
 	����� ���̵� : <jsp:getProperty name="login" property="userid" /> <br>
 	����� �н����� : <jsp:getProperty name="login" property="passwd" /> 
 	
 </div>
 
</body>
</html>