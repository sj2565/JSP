<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 태그를 사용하지 않는 방법으로 JavaBeans를 이용하는 예제 </h2>
	
	<%
		javabean.ScoreBean score = new javabean.ScoreBean();		
	%>
	
	<hr>
	<h3> 이름과 성적을 JavaBeans ScoreBean에 저장 </h3>
	이름 : <%= "김성민" %> <br>
	성적 : <%= "85" %> <p>
	
	<%
		score.setName("김성민");
	%>
	
	<%
		score.setPoint(85);
	%>
	
	<hr>
	<h3> JavaBeans ScoreBean에 저장된 정보를 조회 출력 </h3>
	
	이름 : <% out.println(score.getName()); %> <br>
	성적 : <% out.println(score.getPoint()); %>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>