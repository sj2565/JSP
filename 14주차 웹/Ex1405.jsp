<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		
		Statement stmt = null;
		
		try{
			String sql = "INSERT INTO testdb(id, passwd, name) VALUES('"+id+"','"+passwd+"','"+name+"')";
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			out.println("testdb 테이블 삽입이 성공.");
		}catch(SQLException ex){
			out.println("testdb 테이블 삽입이 실패.");
			out.println("SQLException : " + ex.getMessage());
		}finally{
			if(stmt != null)
				stmt.close();
			if(conn != null)
				conn.close();
		}
	%>
</body>
</html>