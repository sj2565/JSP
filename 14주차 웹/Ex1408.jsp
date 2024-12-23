<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file ="dbconn.jsp" %>
	<table width ="300" border="1">
		<tr>
			<th> 아이디 </th>
			<th> 비밀번호 </th>
			<th> 이름 </th>
		</tr>
		<%
			ResultSet rs = null;
			Statement stmt =null;
			
			try{
				String sql="select * from testdb";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				while(rs.next()){
					String id = rs.getString("id");
					String pw = rs.getString("passwd");
					String name = rs.getString("name");							
		%>
		<tr>
			<td><%=id%></td> 
			<td><%=pw%></td>
			<td><%=name%></td>
		</tr>
		<%
			}
			} catch(SQLException ex){
				out.println("testdb 테이블 호출이 실패.");
				out.println("SQLException : " + ex.getMessage());
			} finally {
				if(rs != null)
					rs.close();
				if(stmt != null)
					stmt.close();
				if(conn != null)
					conn.close();
			}
		%>
	</table>
</body>
</html>