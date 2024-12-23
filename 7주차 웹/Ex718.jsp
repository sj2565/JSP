<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		// 네이버 검색 URL
		// String URL="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8";
		
		// 구글 검색 URL
		String URL ="https://www.google.co.kr/search?q=";
		
		String keyword = request.getParameter("word");
		
		URL += "&" + "query=" + keyword;
		
		response.sendRedirect(URL);
	%>
</body>
</html>