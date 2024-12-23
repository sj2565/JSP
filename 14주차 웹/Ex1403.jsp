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
	2. �����ͺ��̽� ���� ����
	2.1 Statement ��ü�� ������ �����ϱ�
		: Statement ��ü�� �ϳ��� ������ ����ϰ� ���� ���� ����� �� ����.
		: �ϳ��� ������ ������ close()�� ����Ͽ� ��ü�� ��� �����ؾ� �Ѵ�.
		: ��ü ����
		  => createStatement()
		: Statement ��ü���� ���Ǵ� �޼ҵ�
		  => executeQuery() : SELECT ���� ������ �� ���
		  => executeUpdate() : ����, ����, ������ ���õ� SQL�� ���࿡ ���
		  => close() : Statement ��ü�� ��ȯ�� �� ���
	
		2.1.1 executeQuery() �޼ҵ�� ������ ��ȸ�ϱ�
			: ����
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
		
		2.1.2 executeUpdate() �޼ҵ�� ������ ����, ����, �����ϱ�
			: INSERT, UPDATE, DELETE �������� ���� �����͸� ����, ����, �����ϴµ� ���
			: ����
			
				int executeUpdate(String sql) throws SQLException
		
			: ex1 : executeUpdate() �޼ҵ� ��� ��(����) : INSERT ������
			<%			
				Connection conn = null;		
				.....	
				Statement stmt = conn.createStatement();
				String sql ="INSERT INTO testdb(id, name, passwd) VALUES ('1', 'ȫ���', '1234')";
				int rs = stmt.executeUpdate(sql);
				...
				//stmt.close();
			%>	
			
			: ex2 : executeUpdate() �޼ҵ� ��� ��(����) : UPDATE ������
			<%			
				Connection conn = null;
				.....
				Statement stmt = conn.createStatement();
				String sql ="UPDATE testdb SET name = '������' WHERE id ='1'";
				int rs = stmt.executeUpdate(sql);
				...
				//stmt.close();
			%>
			
			: ex3 : executeUpdate() �޼ҵ� ��� ��(����) : DELETE ������
			
			<%			
				Connection conn = null;
				.....
				Statement stmt = conn.createStatement();
				String sql ="DELETE FROM testdb WHERE id ='1'";
				int rs = stmt.executeUpdate(sql);
				...
				//stmt.close();
			%>
	
	2.2 PreparedStatement ��ü�� ������ �����ϱ�
		: �ϳ��� ��ü�� ���� ���� ������ �����ų �� �ִ�.
		: ������ �������� Ư�� ���� �ٲپ ���� �� ������ ��, �Ű������� ���Ƽ� �������� �����ؾ� �� �� ����
		: ����
		
			PreparedStatement prepareStatement(String sql) throws SQLException
			
		: PreparedStatement ��ü���� ���Ǵ� �޼ҵ�
		  => executeQuery() : SELECT ���� ������ �� ���
		  => executeUpdate() : ����, ����, ������ ���õ� SQL�� ���࿡ ���
		  => close() : Statement ��ü�� ��ȯ�� �� ���
		
		: �ش� �ʵ��� ���������� ���ڿ��̸� setString()�� �ǰ�, int�� setInt(), double�� setDouble(),
		  object�� setObject()
		  
		: ex1: executeQuery() �޼ҵ�� ������ ��ȸ�ϱ� : SELECT ������
			
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
		
		: ex2 : executeUpdate() �޼ҵ� ��� ��(����) : INSERT ������
			<%
				Connection conn = null;
				.....
				String sql = "INSERT INTO testdb(id, name, passwd) VALUES (?,?,?)";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, "1");
				pstmt.setString(2, "ȫ���");
				pstmt.setString(3, "1234");
				
				pstmt.executeUpdate();
				.....
				pstmt.close();		
			%>	
			
			: ex3 : executeUpdate() �޼ҵ� ��� ��(����) : UPDATE ������
			<%
				Connection conn = null;
				.....
				String sql = "UPDATE testdb SET name = ? Where id =?";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, "1");
				pstmt.setString(2, "������");			
				
				pstmt.executeUpdate();
				.....
				pstmt.close();		
			%>	
			
			: ex4 : executeUpdate() �޼ҵ� ��� ��(����) : DELETE ������
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