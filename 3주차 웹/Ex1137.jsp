<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- ��ũ��Ʋ�� �±׿� 0���� 10������ ¦��/Ȧ�� ����ϱ� --%>
	
	<%
		out.println("0���� 10������ ¦�� ����ϱ� <p>");
	
		for(int i=0; i<=10; i++){
			if(i % 2 == 0){
				out.println(i + "<br>");
			}
		}
		
		out.println("<p>");
	%>
	
	<%
		out.println("0���� 10������ Ȧ�� ����ϱ� <p>");
		
		for(int j=0; j<=10; j++){
			if(j % 2 == 1){
				out.println(j + "<br>");
			}
		}
	
		out.println("<p>");
	%>
	
</body>
</html>