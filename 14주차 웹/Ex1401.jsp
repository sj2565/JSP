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
	1. JDBC 드라이버 로딩 및 DBMS 접속
	1-1 JDBC 드라이버 로딩
		: 드라이버 인터페이스를 구현하는 작업
		: Class.forName()
			Class.forName(String className);
			- className : JDBC 드라이버의 이름
				ex) MySQL : com.mysql.jdbc.Driver
			String MySQL = "com.mysql.jdbc.Driver";
			try{
				// Class.forName("com.mysql.jdbc.Driver");
				Class.forName(MySQL);
			}catch(SQLException ex){
				System.out.println("SQL 에러");
			}	
			
	1-2 DBMS 접속(Connection 객체 생성하기)
		: JBMS 드라이버에서 데이터베이스와 연결된 커넥션을 가져오기 위한 DriverManger 클래스 사용
		: getConnection() 메소드를 사용
		
		ex)  DriverManger.getConnection(?,?,?);
		: DriverManger.getConnection() 객체 생성
		
		- static Connection getConnection(String url)
		- static Connection getConnection(String url, String user, String password)
		- static Connection getConnection(String url, Properties info)
		
		=> url : 데이터베이스 경로
		   ex) jdbc:mysql://localhost:3306/testdb;
		=> user : 데이터베이스 사용자 이름
		=> password : 데이터베이스 비밀번호   
		=> info : 사용자 및 비밀번호 등의 추가정보를 포함하는 Properties을 사용, java.util.Properties
	
		ex1) getConnection(String url) 메소드 사용 예
		<%
			Connection conn = null;
			try{
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/testdb");
				out.println("데이터베이스 연결이 성공했습니다.");	
			}catch(SQLException ex){
				// 예외 발생 처리
				out.println("데이터베이스 연결이 실패했습니다.");
				out.porintln("SQLEXception : " + ex.getMessage());
			} finally{
				if(conn != null)
					conn.close();
			}
		%>	
		
		ex2) getConnection(String url, String user, String password) 메소드 사용 예
		<%
			Connection conn = null;
			try{
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/testdb", "testuser", "1234");
				out.println("데이터베이스 연결이 성공했습니다.");	
			}catch(SQLException ex){
				// 예외 발생 처리
				out.println("데이터베이스 연결이 실패했습니다.");
				out.porintln("SQLEXception : " + ex.getMessage());
			} finally{
				if(conn != null)
					conn.close();
			}
		%>	
		
		ex3) getConnection(String url, Properties info)	 메소드 사용 예
		<%
			Connection conn = null;
			try{
				Class.forName("com.mysql.jdbc.Driver");
				
				//conn = DriverManager.getConnection(
				//	"jdbc:mysql://localhost:3306/testdb", "testuser", "1234");
				
				Properties props = new Properties();
				
				props.put("user", "testuser");
				props.put("password", "1234");
				
				conn = DrinverManager.getConnection(
				"jdbc:mysql://localhost:3306/testdb", props);
				
				out.println("데이터베이스 연결이 성공했습니다.");	
			}catch(SQLException ex){
				// 예외 발생 처리
				out.println("데이터베이스 연결이 실패했습니다.");
				out.porintln("SQLEXception : " + ex.getMessage());
			} finally{
				if(conn != null)
					conn.close();
			}
		%>	
		
	1-3 데이터베이스 연결 닫기
		void close() throws SQLException
		ex) conn.close();	
 --%>
</body>
</html>