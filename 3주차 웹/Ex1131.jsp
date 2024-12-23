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
	* JSP 태그
	  - 방식 : 1. 스크립트 태그(Script Tag) :  HTML 코드에 자바 코드를 넣어 프로그램이 수행하는 기능을 구현
	  				- 디렉티브 태그 : JSP 페이지를 어떻게 처리할 것인지 설정하여 JSP 페이지에 대한 정보를 JSP 컨테니어에 보낸다.
	  				- 액션 태그(Action Tag) : XML 스타일의 태그로 기술한 동작 기능을 수행하는 방식
	  				- 커스텀 태그(Custom Tag) : 새로운 태그를 정의
	  - 종류 
	  
	  			종류					태그 형식						사용 용도
	  	=====================================================================	
	  	지시어(directive)			<%@            %>		JSP 페이지의 속성을 지정
	  	선언(declaration)			<%!            %>		소속변수 선언과 메소드 정의 
	  	표현식(expression)		<%=            %>		변수, 계산식, 함수 호출 결과를 문자열 형태로 출력 
	  	스크립트릿(scriptlet)		<%             %>		자바 코드 기술
	  	주석(comments)			<%--         --%>		JSP 페이지의 설명 추가		
	  
	  
	  - JSP 액션 태그와 컨스텀 태그
	  			종류					태그 형식						사용 용도
	  	==================================================================================		
	  		액션태그			<jsp:include page="test.jsp" />		현재 JSP 페이지에서 다른 페이지를 포함
	  						<jsp:forward page="test.jsp" />		현재 JSP 페이지의 제어를 다른 페이지에 전달
	  						<jsp:plugin type="applet" code="test" />	자바 애플릿을 플러그인
	  						<jsp:useBean id="login" class="LoginBean">	자바빈을 사용  
	  						<jsp:setProperty name="login" property="pass" />	자바빈의 속성을 지정하는 메소드르 호출
	  						<jsp:getProperty name="login" property="pass" />	자바빈의 속성을 반환하는 메소드를 호출
	    ------------------------------------------------------------------------------------		  						
	  		커스텀태그			<tag:printData dbname="mydb" table="memb" />	사용자가 직접 정의한 태그를 이용
	    
 --%>
</body>
</html>