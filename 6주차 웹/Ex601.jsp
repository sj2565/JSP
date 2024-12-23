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
	1. 자바빈즈?
	- 프로그램의 비즈니스 로직 부분과 프리젠테이션 부분을 분리해서, 비즈니스 로직 부분을 담당하는 자바 프로그램 단위
	- 자바 프로그램에서 특정한 작업인 로직을 독립적으로 수행하는 하나의 프로그램 단위
	- 특징 : 1. 재사용
	  		2. 시간 단축
	
	2. 자바빈즈 구성
	
	
	자바빈즈
		- 필드
		- setter
		- getter
		- 다른 메소드
	ex) login.java
			id
			pw
			check();
	
	3. 자바 빈즈 태그 종류
	
	=======================================================================
	액션										내용
	=======================================================================
	<jsp:useBean id="login" ...  />			JSP와 연관시켜 자바 빈즈를 생성
	<jsp:setProperty name="login" ... />	생성된 자바 빈즈(login)의 객체를 이용해 setter에 속성 값을 전달
	<jsp:getProperty name="login" ... />	생성된 자바 빈즈(login)의 객체를 이용해 getter에 속성 값을 반환
	
	* <jsp:useBean .. />에서 이용한 속성 : id, class, scope
	  <jsp:setProperty .. />에서 이용한 속성 : name, property, param, value 
	  <jsp:getProperty .. >에서 이용한 속성 : name, property
	
	* <jsp:useBean .. />, <jsp:setProperty .. />, <jsp:getProperty .. >의 사용 유형 설명
	========================================================================================
	액션						속성			값 유형			설명
	========================================================================================
	<jsp:useBean .. />		id			문자열			JSP 페이지내에서 자바 빈즈의 참조 변수를 저장하는 
														변수 이름을 지정
							class		문자열			생성할 자바 빈즈의 클래스 이름   ex) Test.HaHa
																					  패키지이름.클래스 이름	
							scope		page			자바 빈즈의 유효 범위을 나타내며 지정하지 않으면
														기본 값은  page
										request
										session
										application							
							
	<jsp:setProperty .. />	name		문자열			<jsp:useBean>에서 지정한 id로 지정
							property	문자열			자바 빈즈의 setter()의 이름  setName()에서 set을 제거한
														name으로 지정하며, 값이 "*"이면 파라미터의 모든 값을 지정하는 의미
							param		문자열			속성 property와 함께 쓰이며, 지정된 파라미터로 전달받은 파라미터의
														이름을 지정
							value 		문자열			속성 property와 함께 쓰이며, 자바 빈즈의  setter()의 
														setName(value)에 지정하는 인자(매개변수) 값인 value를 지정	
							
	<jsp:getProperty .. >	name		문자열			<jsp:useBean>에서 지정한 id로 지정
							property	문자열			자바 빈즈의  getter() 이름  getName()에서 Name으로 지정

							
	* 값 유형 설명
	  
	========================================================================================
	액션				내용
	========================================================================================
	page			자바 빈즈가 현재의 JSP 페이지 내에서만 사용 가능하며, 기본 값이므로 특별히 지정하지 않으면
					이 옵션이 적용. 가장 좁은 범위 scope 값이다.
	request			JSP 페이지는 request 객체가 영향을 미치는 모든 JSP 페이지까지 자바 빈즈 이용 가능
	session			세션이 유효한 페이지까지 자바 빈즈 이용 가능
	application		응용 프로그램의 모든 페이지에서 자바 빈즈 객체의 사용이 가능하며, 이 값은 가장 넓은 범위 scope 값 
	
	
	
	
	
	
	
	
	
	
	 
	
	
	
	  		

 --%>
</body>
</html>