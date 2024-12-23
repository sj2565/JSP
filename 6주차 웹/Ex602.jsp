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
	** 자바 빈즈 태그의 이용 **

	1. <jsp:useBean ... /> : JSP 프로그램에서 자바 빈즈를 이용하려는 선언 문장
		- 기본적으로 사용하는 속성 : id, class 사용
		- id : 객체 참조를 저장하는 변수 이름
		- class : 객체 참조의 클래스 이름
		
		-자바 코드 1 : 기본 자바빈즈 사용 
		
			<jsp:useBean  id="test"  class="ClassName" />
			
			<%
				ClassName test = new ClassName();
			%> 
			
			
			- 속성 scope를 지정하지 않으면 기본 값 : page
			
			<jsp:useBean  id="test"  class="ClassName" scope="page" />
			
			<jsp:useBean  id="test"  class="ClassName" scope="application" />
			
			
		-자바 코드 2 : <jsp:setProperty ...> 사용
		
			<jsp:useBean id="test" class="ClassName" scope="application" />
			
			<jsp:setProperty  name="test" property = "name" value="홍길동" />
			
		
		-자바 코드 3 : <jsp:setProperty ...>와 <% %>의 사용
		
			<jsp:setProperty name="test" property = "name" value="홍길동" />
			
			<%
				test.setName("홍길동");
			%> 
			
		 * 	<jsp:setProperty ...> 에서 속성  property 이용 유형 : 4가지
		 1. <jsp.setProperty name ="test" property="*" />
		 2. <jsp.setProperty name ="test" property="name" />
		 3. <jsp.setProperty name ="test" property="name" param = "username" />
		 4. <jsp.setProperty name ="test" property="name" value="홍길동" />
		
		
		-자바 코드 4 : 태그 <jsp:setProperty .../>에서 속성 value 가 없는 태그와 같은 의미의 자바 코드
		
			<jsp:setProperty name="test" property="name" />
			
			<%
				test.setName( request.getParameter("name") );			
			%>
		  		
		-자바 코드 5 : 태그(<jsp:setProperty ... param=... >)와 같은 의미의 자바 코드 
		
			<jsp:setProperty name="test" property="name" param="username" />
			
			<% 
				test.setName( request.getParameter("username"));
			%>
			
		-자바 코드 6 :  태그(<jsp:getProperty ..> 와 같은 의미의 자바코드
		
			<jsp:useBean id="test" class="ClassName" scope="application" />
			
			<jsp:getProperty name="test" property="name" /> 	
			
			<%
				test.getName();				
			%>
			
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

 --%>
</body>
</html>