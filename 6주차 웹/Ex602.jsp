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
	** �ڹ� ���� �±��� �̿� **

	1. <jsp:useBean ... /> : JSP ���α׷����� �ڹ� ��� �̿��Ϸ��� ���� ����
		- �⺻������ ����ϴ� �Ӽ� : id, class ���
		- id : ��ü ������ �����ϴ� ���� �̸�
		- class : ��ü ������ Ŭ���� �̸�
		
		-�ڹ� �ڵ� 1 : �⺻ �ڹٺ��� ��� 
		
			<jsp:useBean  id="test"  class="ClassName" />
			
			<%
				ClassName test = new ClassName();
			%> 
			
			
			- �Ӽ� scope�� �������� ������ �⺻ �� : page
			
			<jsp:useBean  id="test"  class="ClassName" scope="page" />
			
			<jsp:useBean  id="test"  class="ClassName" scope="application" />
			
			
		-�ڹ� �ڵ� 2 : <jsp:setProperty ...> ���
		
			<jsp:useBean id="test" class="ClassName" scope="application" />
			
			<jsp:setProperty  name="test" property = "name" value="ȫ�浿" />
			
		
		-�ڹ� �ڵ� 3 : <jsp:setProperty ...>�� <% %>�� ���
		
			<jsp:setProperty name="test" property = "name" value="ȫ�浿" />
			
			<%
				test.setName("ȫ�浿");
			%> 
			
		 * 	<jsp:setProperty ...> ���� �Ӽ�  property �̿� ���� : 4����
		 1. <jsp.setProperty name ="test" property="*" />
		 2. <jsp.setProperty name ="test" property="name" />
		 3. <jsp.setProperty name ="test" property="name" param = "username" />
		 4. <jsp.setProperty name ="test" property="name" value="ȫ�浿" />
		
		
		-�ڹ� �ڵ� 4 : �±� <jsp:setProperty .../>���� �Ӽ� value �� ���� �±׿� ���� �ǹ��� �ڹ� �ڵ�
		
			<jsp:setProperty name="test" property="name" />
			
			<%
				test.setName( request.getParameter("name") );			
			%>
		  		
		-�ڹ� �ڵ� 5 : �±�(<jsp:setProperty ... param=... >)�� ���� �ǹ��� �ڹ� �ڵ� 
		
			<jsp:setProperty name="test" property="name" param="username" />
			
			<% 
				test.setName( request.getParameter("username"));
			%>
			
		-�ڹ� �ڵ� 6 :  �±�(<jsp:getProperty ..> �� ���� �ǹ��� �ڹ��ڵ�
		
			<jsp:useBean id="test" class="ClassName" scope="application" />
			
			<jsp:getProperty name="test" property="name" /> 	
			
			<%
				test.getName();				
			%>
			
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

 --%>
</body>
</html>