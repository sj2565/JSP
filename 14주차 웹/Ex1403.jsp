<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
	2. 데이터베이스 쿼리 실행
	2.1 Statement 객체로 데이터 접근하기
		: Statement 객체는 하나의 쿼리를 사용하고 나면 더는 사용할 수 없다.
		: 하나의 쿼러를 끝내면 close()를 사용하여 객체를 즉시 해제해야 한다.
		: 객체 생성
		  => createStatement()
		: Statement 객체에서 사용되는 메소드
		  => executeQuery() : SELECT 문을 실행할 때 사용
		  => executeUpdate() : 삽입, 수정, 삭젝와 관련된 SQL문 실행에 사용
		  => close() : Statement 객체를 반환할 때 사용
	
		2.1.1 executeQuery() 메소드로 데이터 조회하기
			: 형식
				ResultSet excuteQuery(String sql) throws SQLException
				
			: ex)
			<%
			
				Connection conn = null;	
				.....
				Statement stmt = conn.createStatement();
				String sql ="SELECT * FROM testdb WHERE id = '1'";
				ResultSet rs = stmt.executeQuery(sql);
				stmt.close();
			%>	
		
		2.1.2 executeUpdate() 메소드로 데이터 삽입, 수정, 삭제하기
			: INSERT, UPDATE, DELETE 쿼리문을 통해 데이터를 삽입, 수정, 삭제하는데 사용
			: 형식
			
				int executeUpdate(String sql) throws SQLException
		
			: ex1 : executeUpdate() 메소드 사용 예(삽입) : INSERT 쿼리문
			<%			
				Connection conn = null;		
				.....	
				Statement stmt = conn.createStatement();
				String sql ="INSERT INTO testdb(id, name, passwd) VALUES ('1', '홍길순', '1234')";
				int rs = stmt.executeUpdate(sql);
				...
				//stmt.close();
			%>	
			
			: ex2 : executeUpdate() 메소드 사용 예(수정) : UPDATE 쿼리문
			<%			
				Connection conn = null;
				.....
				Statement stmt = conn.createStatement();
				String sql ="UPDATE testdb SET name = '관리자' WHERE id ='1'";
				int rs = stmt.executeUpdate(sql);
				...
				//stmt.close();
			%>
			
			: ex3 : executeUpdate() 메소드 사용 예(삭제) : DELETE 쿼리문
			
			<%			
				Connection conn = null;
				.....
				Statement stmt = conn.createStatement();
				String sql ="DELETE FROM testdb WHERE id ='1'";
				int rs = stmt.executeUpdate(sql);
				...
				//stmt.close();
			%>
	
	2.2 PreparedStatement 객체로 데이터 접근하기
		: 하나의 객체로 여러 번의 쿼리를 실행시킬 수 있다.
		: 동일한 쿼리문을 특정 값만 바꾸어서 여러 번 실행할 때, 매개변수가 많아서 쿼리문을 정리해야 할 때 유용
		: 형식
		
			PreparedStatement prepareStatement(String sql) throws SQLException
			
		: PreparedStatement 객체에서 사용되는 메소드
		  => executeQuery() : SELECT 문을 실행할 때 사용
		  => executeUpdate() : 삽입, 수정, 삭젝와 관련된 SQL문 실행에 사용
		  => close() : Statement 객체를 반환할 때 사용
		
		: 해당 필드의 데이터형이 문자열이면 setString()이 되고, int면 setInt(), double명 setDouble(),
		  object형 setObject()
		  
		: ex1: executeQuery() 메소드로 데이터 조회하기 : SELECT 쿼리문
			
			<%
				Connection conn = null;
				.....
				String sql = "SELECT * FROM testdb WHERE id = '?'";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, "1");
				
				ResultSet rs = pstmt.executeQuery(sql);
				.....
				pstmt.close();			
			%>	
		
		: ex2 : executeUpdate() 메소드 사용 예(삽입) : INSERT 쿼리문
			<%
				Connection conn = null;
				.....
				String sql = "INSERT INTO testdb(id, name, passwd) VALUES (?,?,?)";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, "1");
				pstmt.setString(2, "홍길순");
				pstmt.setString(3, "1234");
				
				pstmt.executeUpdate();
				.....
				pstmt.close();		
			%>	
			
			: ex3 : executeUpdate() 메소드 사용 예(수정) : UPDATE 쿼리문
			<%
				Connection conn = null;
				.....
				String sql = "UPDATE testdb SET name = ? Where id =?";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, "1");
				pstmt.setString(2, "관리자");			
				
				pstmt.executeUpdate();
				.....
				pstmt.close();		
			%>	
			
			: ex4 : executeUpdate() 메소드 사용 예(삭제) : DELETE 쿼리문
			<%	
				Connection conn = null;
				.....	
				String sql = "DELETE FROM testdb Where id =?";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, "1");							
				
				pstmt.executeUpdate();	
				.....	
				pstmt.close();				
			%>	
 --%>
</body>
</html>