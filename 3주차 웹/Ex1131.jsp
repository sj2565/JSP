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
	* JSP �±�
	  - ��� : 1. ��ũ��Ʈ �±�(Script Tag) :  HTML �ڵ忡 �ڹ� �ڵ带 �־� ���α׷��� �����ϴ� ����� ����
	  				- ��Ƽ�� �±� : JSP �������� ��� ó���� ������ �����Ͽ� JSP �������� ���� ������ JSP ���״Ͼ ������.
	  				- �׼� �±�(Action Tag) : XML ��Ÿ���� �±׷� ����� ���� ����� �����ϴ� ���
	  				- Ŀ���� �±�(Custom Tag) : ���ο� �±׸� ����
	  - ���� 
	  
	  			����					�±� ����						��� �뵵
	  	=====================================================================	
	  	���þ�(directive)			<%@            %>		JSP �������� �Ӽ��� ����
	  	����(declaration)			<%!            %>		�ҼӺ��� ����� �޼ҵ� ���� 
	  	ǥ����(expression)		<%=            %>		����, ����, �Լ� ȣ�� ����� ���ڿ� ���·� ��� 
	  	��ũ��Ʈ��(scriptlet)		<%             %>		�ڹ� �ڵ� ���
	  	�ּ�(comments)			<%--         --%>		JSP �������� ���� �߰�		
	  
	  
	  - JSP �׼� �±׿� ������ �±�
	  			����					�±� ����						��� �뵵
	  	==================================================================================		
	  		�׼��±�			<jsp:include page="test.jsp" />		���� JSP ���������� �ٸ� �������� ����
	  						<jsp:forward page="test.jsp" />		���� JSP �������� ��� �ٸ� �������� ����
	  						<jsp:plugin type="applet" code="test" />	�ڹ� ���ø��� �÷�����
	  						<jsp:useBean id="login" class="LoginBean">	�ڹٺ��� ���  
	  						<jsp:setProperty name="login" property="pass" />	�ڹٺ��� �Ӽ��� �����ϴ� �޼ҵ帣 ȣ��
	  						<jsp:getProperty name="login" property="pass" />	�ڹٺ��� �Ӽ��� ��ȯ�ϴ� �޼ҵ带 ȣ��
	    ------------------------------------------------------------------------------------		  						
	  		Ŀ�����±�			<tag:printData dbname="mydb" table="memb" />	����ڰ� ���� ������ �±׸� �̿�
	    
 --%>
</body>
</html>