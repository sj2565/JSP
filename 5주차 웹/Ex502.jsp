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
	** �׼� �±��� ����
	���� : ������ Ŭ���̾�Ʈ���� � �ൿ�� �ϵ��� ����ϴ� �±�
		  ��ũ��Ʈ �±�, �ּ� ��Ƽ�� �±׿� �Բ� JSP �������� �����ϴ� �±�
	���� : JSP ���������� �������� ������ ���̸� �����ϰų�, 
			�ٸ� �������� ���� ��� ������ ���� �������� �����ϰų�, 
			�ڹ� ����(JavaBeans) ���� �پ��� ��� ����
	
	���� 1: <jsp:�±�Ű���� �±׼Ӽ�="�±װ�" />

		ex) <jsp:include page="test.jsp" />
			
	���� 2: <jsp:�±�Ű���� �±׼Ӽ�="�±װ�">
				<jsp:param name="weeks" value="52" />
		   </jsp:�±�Ű����> 
		   
	** �׼� �±��� ����
	
	�׼��±�			����					����
	========================================================================================
	forward		<jsp:forward ..... />	�ٸ� ���������� �̵��� ���� ������ �帧�� �����մϴ�.
				ex) <jsp:forward page="test.jsp" /> 
	include		<jsp:include ..... />	�ܺ� �������� ������ �����ϰų� �������� ���ȭ�մϴ�.
	useBean		<jsp:useBean ..... />	JSP �������� �ڹٺ�� �����մϴ�.
				ex) test.java  test2.jsp
	setProperty	<jsp:setProperty .... />	�ڹٺ����� ������Ƽ ���� �����մϴ�.
	getProperty	<jsp:getProperty .... />	�ڹٺ����� ������Ƽ ���� ���ɴϴ�.
	param		<jsp:param ..... />		<jsp:forward>,<jsp:include>,<jsp:plugin> �±׿� ���ڸ� �߰��մϴ�.
	plugin		<jsp:plugin .... />		�� �������� �ڹ� ���ø��� �����մϴ�.
										�ڹ� �÷����ο� ���� OBJECT �Ǵ� EMBED �±׸� ����� �������� �ڵ带 �����Ѵ�.
	element		<jsp:element ..... />	���� XML ��Ҹ� �����մϴ�.
	attribute	<jsp:attribute ... />	�������� ���ǵ� XML ����� �Ӽ��� �����մϴ�.
	body		<jsp:body ...... />		�������� ���ǵ� XML ����� ��ü�� �����մϴ�.
	text		<jsp:text ...... />		JSP ������ �� �������� ���ø� �ױ׽��� �ۼ��մϴ�.. 									
	
	** �׼� �±��� ������ ���� �� ��� �뵵
	
	�±� ����			�±�����												��� �뵵
	=====================================================================================
	incldue			<jsp:include page="test.jsp" />
																	���� JSP ���������� �ٸ� �������� ����
	param			<jsp:include page="test.jsp" >
						<jsp:param name="id" value="ȫ�浿" />
						<jsp:param name="pw" value="1234" />
					</jsp:include>
	-----------------------------------------------------------------------------------------
	forward			<jsp:forward page="test.jsp" />
																	����  JSP �������� ��� �ٸ� �������� ����
	param			<jsp:forward page="test.jsp" >
						<jsp:param name="id" value="ȫ�浿" />
						<jsp:param name="pw" value="1234" />
					</jsp:forward> 							 
	
	------------------------------------------------------------------------------------------
	plugin			<jsp:plugin type="applet" code="test" />		�ڹ� ���ø� ���� �÷�����
	
	------------------------------------------------------------------------------------------	
	useBean 		<jsp:useBean id="login"  class="LoginBean" />	�ڹ� ��� ���
	
	------------------------------------------------------------------------------------------
	setProperty		<jsp:setProperty name="login" property="pass" /> �ڹ� ������ �Ӽ��� �����ϴ� �޼ҵ带 ȣ��
	
	------------------------------------------------------------------------------------------	
	getProperty		<jsp:getProperty name="login" property="pass" /> �ڹ� ������ �Ӽ��� ��ȯ�ϴ� �޼ҵ带 ȣ��
		
	
	
	
	
	
	
	
	
	
		   	
					   

 --%>
</body>
</html>