<%@ page import="java.sql.*" %>
<%
	Connection conn = null;

	String url = "jdbc:mysql://localhost:3306/testdb";
	String user = "root";
	String password = "1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(url, user, password);
%>