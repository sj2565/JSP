<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	폼 데이터 처리
	1. 요청 파라미터의 값 받기
		-형식
		String  변수 = request.getParameter(요청 파라미터의 이름);
 --%>
 
 	<%
 		request.setCharacterEncoding("UTF-8");
 	
 		String id = request.getParameter("id");
 		String passwd = request.getParameter("passwd");
 		String name = request.getParameter("name");
 		String phone1 = request.getParameter("phone1");
 		String phone2 = request.getParameter("phone2");
 		String phone3 = request.getParameter("phone3");
 		String sex = request.getParameter("sex");
 		String hobby1 = request.getParameter("hobby1");
 		String hobby2 = request.getParameter("hobby2");
 		String hobby3 = request.getParameter("hobby3");
 		String hobby4 = request.getParameter("hobby4");
 		String hobby5 = request.getParameter("hobby5");
 		String hobby6 = request.getParameter("hobby6");
 		String hobby7 = request.getParameter("hobby7");
 		String comment = request.getParameter("comment");
 	
 	%>
 	
 	<p> 아이디 : <%=id%>
 	<p> 비밀번호 : <%=passwd%>
 	<p> 이름 : <%=name%>
 	<p> 연락처 : <%=phone1%>-<%=phone2%>-<%=phone3%>
 	<p> 성별 : <%=sex %>
 	<p> 취미 : <%=hobby1%><%=hobby2%><%=hobby3%><%=hobby4%><%=hobby5%><%=hobby6%><%=hobby7%>
 	<p> 가입인사 : <%=comment%>
 
</body>
</html>