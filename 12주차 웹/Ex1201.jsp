<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
	1. 예외처리
	- 프로그램이 처리되는 동안 특정한 문제가 발생했을 때 처리를 중단하고 다른 처리를 하는 것으로 오류 처리.
	
	2. 예외 처리 방법의 종류
	============================================================================================
	예외 처리 방법								설명
	============================================================================================
	page 디렉티브 태그를 이용한 예외처리			errorPage 와 isErrorPage 속성을 이용.
	web.xml 파일을 이용한 예외 처리				<error-code> 또는 <exception-type> 요소를 이용.
	try/catch/finally를 이용한 예외처리			자바 언어의 예외 처리 구문을 이용.
	
	3. page 디렉티브 태그를 이용한 예외처리
	- 형식 
	
		<%@ page errorPage="오류 페이지 URL"%>
		오류 페이지 URL : A.jsp 또는 ./test/A.jsp
	
	4. isErrorPage 속성으로 오류페이지 만들기
		- isErrorPage 속성 : 현재 JSP 페이지를 오류 페이지로 호출하는 Page 디렉티브 태그의 속성
		- 형식
		
		<%@ page isErrorPage ="true"%>
		
		- exception 내장 객체의 메소드
		==========================================================================================
		메소드				형식				설명 
		==========================================================================================
		getMessage()		String			오류 이벤트와 함께 들어오는 메시지를 출력.
		toString()			String			오류 이벤트의  toString()을 호출하여 간단한 오류 메세지를 확인.
		printStackTrace()	String			오류 메시지의 발생 근원지를 찾아 단계별로 오류를 출력.
 --%>
</body>
</html>