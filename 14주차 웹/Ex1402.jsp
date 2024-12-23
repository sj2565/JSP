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
<%
	Connection conn =null;
	
	try{
		
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/testdb";
		String id ="testuser";
		String pwd ="1234";

		Class.forName(driverName);
		
		conn = DriverManager.getConnection(url, id, pwd);
		
		out.println("데이터베이스 연결이 성공했습니다.");		
		
	}catch (SQLException ex){
		
		out.println("데이터베이스 연결이 성공했습니다.");
		out.println("SQLException : " + ex.getMessage());
				
	}finally{
		if(conn != null)
			conn.close();
	}
%>
</body>
</html>