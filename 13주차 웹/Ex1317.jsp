<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%--
	쿠키 정보
	- 쿠키 객체 얻기
	- 클라이언트의 저장된 모든 쿠키 객체를 가져오려면 reqeust 내장 객체의 getCookies() 메소들을 사용
	- 쿠키 객체가 여러 개일 때는 배열 형태로 가져옴
	- 형식 : Cookie[] request.getCookies();
		ex)	Cookie[] cookies = request.getCookies();
		
	- 쿠키 객체를 얻어왔다면 이 쿠키 객에 저장된 쿠키 이름과 값을 가져오기 위한  getName(), getValue() 메소드를 사용
	- 형식 : 	String getName();
		    String getValue();
		ex)	Cookie[] cookies = reqeust.getCookies();	
			for(int i=0; i< cookies.length; i++){
				out.println(cookies[i].getName() + " : " + cookies[i].getValue() + "<br>");
			}
 --%>
 <%
 	Cookie[] cookies = request.getCookies();
 	
 	out.println("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
 	out.println("=================================<br><br>");
 	
 	for(int i=0; i< cookies.length; i++){
 		out.println("설정된 쿠키의 속성 이름["+i+"] : " + cookies[0].getName() + "<br>");
 		out.println("설정된 쿠키의 속성 값["+i+"] : " + cookies[0].getValue() + "<br>");
 		out.println("-----------------------------------<br><br>");
 	}
 %>
</body>
</html>