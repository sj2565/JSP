<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	1. 파일 업로드를 위한 JSP 페이지 
	<form method="POST" enctype = "multipart/form-data" action="process.jsp">
		<p>제목 : <input type="text" name="title">
		<p>파일1 : <input type="file" name="fileName1">
		<p>파일2 : <input type="file" name="fileName2">
		<p>파일3 : <input type="file" name="fileName3">
		<p><input type="submit" value="파일업로드">
	</form>
	1. form 태그의 method 속성은 반드시 POST 방식으로 설정해야 한다.
	2. form 태그의 enctype 속성은 반드시  multipart/form-data로 방식으로 설정해야 한다.
	3. form 태그의 action 속성은 파일 업로드를 처리할  JSP 파일로 설정해야 한다.
	4. 파일 업로드를 위해  input  태그의  type 속성을 file로 설정해야한다.
	   만약 여러 파일을 업로드하려면 2개 이상의 input  를 사용하고, name 속성에 서로 다른 값을 설정한다. 
 -->
 	<form method="POST" enctype="multipart/form-data" action="process.jsp">
		<p>제목 : <input type="text" name="title">
		<p>파일1 : <input type="file" name="fileName1">
		<p>파일2 : <input type="file" name="fileName2">
		<p>파일3 : <input type="file" name="fileName3">
		<p><input type="submit" value="파일업로드">
	</form>
</body>
</html>