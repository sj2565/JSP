<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2> JavaBeans를 이용한 학생의 점수에 따른 성적 처리 예제 </h2>
	<jsp:useBean id="score" class="javabean.GradeBean" scope="page" />
	
	<hr>
	
	<h3> 폼에서 전달받은 이름과 성적을 JavaBeans GradeBean에 저장 </h3>
	
	이름 : <%= "허운경" %> <br>
	성적 : <%= "89" %> <br>
	등급 : <%= "B" %> <p>
	
	<jsp:setProperty name="score" property="name" value="허운경" />
	<jsp:setProperty name="score" property="point" value="89" />
	
	<hr>
	<h2> JavaBeans GradeBean에 저장된 정보를 조회 출력</h2>
	
	이름 : <jsp:getProperty name="score" property="name" /> <br>
	성적 : <jsp:getProperty name="score" property="point" /> <br>
	등급 : <jsp:getProperty name="score" property="grade" /> <br>

</body>
</html>