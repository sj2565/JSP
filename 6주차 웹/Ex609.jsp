<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

 	<jsp:useBean id="person" class="Test.Person" />
 	<jsp:setProperty name="person" property="id" value = "22222222"  />
 	<jsp:setProperty name="person" property="name" value = "�ڻ��"  />
 	
 	<p> ���̵� : <jsp:getProperty property="id" name ="person" />
 	<p> ��  �� : <jsp:getProperty name="person" property="name" /> 
 	<br><br>

 	<jsp:include page="Ex608.jsp" />

</body>
</html>