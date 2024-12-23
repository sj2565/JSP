<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/testdb";
	String id = "user";
	String pwd = "2565";
	
	try{
		Class.forName(driverName);
	}catch(ClassNotFoundException e){
		out.println("where jdbc driver?");
		e.printStackTrace();
		return;
	}
	out.println("mysql jdbc Driver registered");
	
	Connection conn = DriverManager.getConnection(url, id, pwd);
	out.println("연결성공");
	
	conn.close();
%>
</body>
</html>