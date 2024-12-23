<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	1. 폼 데이터의 일괄 처리 메소드
	
	====================================================================================
	메소드				형식						설명
	------------------------------------------------------------------------------------
	getParameterNames()	java.util.Enumeration	모든 입력 양식의 요청 파라미터 이름을 순서에 상관없이
												Enumeration(열거형) 형태로 전달받습니다.
	hasMoreElements()							Enumeration(열거형) 요소가 있으면 true를 반환하고
												그렇지 않으면 false 를 반환합니다.
	nextElement()								Enumeration(열거형) 요소를 반환																						
 --%>
 	<table border="1">
 		<tr>
 			<th>요청 파라미터 이름</th>
 			<th>요청 파라미터 값</th> 			
 		</tr> 		
 			<%
 			request.setCharacterEncoding("UTF-8");
 			
 			Enumeration paramNames = request.getParameterNames();
 			while(paramNames.hasMoreElements()){
 				String name = (String) paramNames.nextElement();
 				out.print("<tr><td>" + name + "</td> \n");
 				String paramValue = request.getParameter(name);
 				out.print("<td>" + paramValue + "</td></tr> \n");
 			}
 			%> 		
 	</table>
</body>
</html>