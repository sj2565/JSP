<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2> 로그인 예제 </h2>
	<%
		request.setCharacterEncoding("euc-kr");
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");		
	%>
	
	<%
		if (userid.equals("") ) {
	%>
	
	<jsp:include page="Ex518.jsp">
		<jsp:param name="userid" value="guest" />
		<jsp:param name="passwd" value="anonymous" />
	</jsp:include>
	
	<%
		} else if(passwd.equals("")){
	%>
	
	<jsp:include page="Ex518.jsp">
		<jsp:param name="userid" value="guest" />
		<jsp:param name="passwd" value="anonymous" />
	</jsp:include>
	
	<%
		} else{
	%>
	
	<jsp:include page="Ex518.jsp" />
	<%
		}	
	%>
	

	

</body>
</html>