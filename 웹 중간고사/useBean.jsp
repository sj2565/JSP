<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4> 구구단 출력하기 </h4>
<jsp:useBean id="bean" class="src.GuGuDan" />
	
	<%
		for(int i =1;i<=9;i++){
		int m = bean.process(n);	
	%>
	<%=5+"*"+m+"="+m*1+"<br>"%>

</body>
</html>