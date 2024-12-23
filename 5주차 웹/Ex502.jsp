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
	** 액션 태그의 개요
	정의 : 서버나 클라이언트에게 어떤 행동을 하도록 명령하는 태그
		  스크립트 태그, 주석 디렉티브 태그와 함께 JSP 페이지를 구성하는 태그
	동작 : JSP 페이지에서 페이지와 페이지 사이를 제어하거나, 
			다른 페이지의 실행 결과 내용을 현재 페이지에 포함하거나, 
			자바 빈즈(JavaBeans) 등의 다양한 기능 제공
	
	형식 1: <jsp:태그키워드 태그속성="태그값" />

		ex) <jsp:include page="test.jsp" />
			
	형식 2: <jsp:태그키워드 태그속성="태그값">
				<jsp:param name="weeks" value="52" />
		   </jsp:태그키워드> 
		   
	** 액션 태그의 종류
	
	액션태그			형식					설명
	========================================================================================
	forward		<jsp:forward ..... />	다른 페이지로의 이동과 같은 페이지 흐름을 제어합니다.
				ex) <jsp:forward page="test.jsp" /> 
	include		<jsp:include ..... />	외부 페이지의 내용을 포함하거나 페이지를 모듈화합니다.
	useBean		<jsp:useBean ..... />	JSP 페이지에 자바빈즈를 설정합니다.
				ex) test.java  test2.jsp
	setProperty	<jsp:setProperty .... />	자바빈즈의 프로퍼티 값을 설정합니다.
	getProperty	<jsp:getProperty .... />	자바빈즈의 프로퍼티 값을 얻어옵니다.
	param		<jsp:param ..... />		<jsp:forward>,<jsp:include>,<jsp:plugin> 태그에 인자를 추가합니다.
	plugin		<jsp:plugin .... />		웹 브라우저에 자바 애플릿을 실행합니다.
										자바 플러그인에 대한 OBJECT 또는 EMBED 태그를 만드는 블라우저별 코드를 생성한다.
	element		<jsp:element ..... />	동적 XML 요소를 설정합니다.
	attribute	<jsp:attribute ... />	동적으로 정의된 XML 요소의 속성을 설정합니다.
	body		<jsp:body ...... />		동적으로 정의된 XML 요소의 몸체를 설정합니다.
	text		<jsp:text ...... />		JSP 페이지 및 문서에서 템플릿 테그스를 작성합니다.. 									
	
	** 액션 태그의 종류별 형식 및 사용 용도
	
	태그 종류			태그형식												사용 용도
	=====================================================================================
	incldue			<jsp:include page="test.jsp" />
																	현재 JSP 페이지에서 다른 페이지를 포함
	param			<jsp:include page="test.jsp" >
						<jsp:param name="id" value="홍길동" />
						<jsp:param name="pw" value="1234" />
					</jsp:include>
	-----------------------------------------------------------------------------------------
	forward			<jsp:forward page="test.jsp" />
																	현재  JSP 페이지의 제어를 다른 페이지에 전달
	param			<jsp:forward page="test.jsp" >
						<jsp:param name="id" value="홍길동" />
						<jsp:param name="pw" value="1234" />
					</jsp:forward> 							 
	
	------------------------------------------------------------------------------------------
	plugin			<jsp:plugin type="applet" code="test" />		자바 애플릿 등을 플러그인
	
	------------------------------------------------------------------------------------------	
	useBean 		<jsp:useBean id="login"  class="LoginBean" />	자바 빈즈를 사용
	
	------------------------------------------------------------------------------------------
	setProperty		<jsp:setProperty name="login" property="pass" /> 자바 빈즈의 속성을 지정하는 메소드를 호출
	
	------------------------------------------------------------------------------------------	
	getProperty		<jsp:getProperty name="login" property="pass" /> 자바 빈즈의 속성을 반환하는 메소드를 호출
		
	
	
	
	
	
	
	
	
	
		   	
					   

 --%>
</body>
</html>