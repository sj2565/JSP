<html>
	<head>
		<title>Insert title here</title>
	</head>

<!--  선언문 태그 사용 예 : 전역변수 선언 -->
	<%! int count = 0; %>
	<body>

		Page Count is 
		<%-- 스크립틀릿 태그 --%>
	
		<% 
			out.println(" that value of the variable is :" + ++count);
		%>

	</body>
</html>