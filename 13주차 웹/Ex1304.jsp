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
	4-2 ���� ����
	1. ���� ���� ���� ���
		- ���ǿ� ����� �ϳ��� ���� �Ӽ� �̸��� ���� �Ӽ� ���� �������� getAttribute() �޼ҵ带 ���
		- getAttribute() �޼ҵ�� ��ȯ ������ Object���̹Ƿ� �ݵ�� �� ��ȯ�� �Ͽ� ����ؾ� ��
			
			Object getAttribute(String name)
			
			: ù ��° �Ű����� name�� ���ǿ� ����� ���� �Ӽ� �̸�
			=> �ش� �Ӽ� �̸��� ���� ��� null�� ��ȯ
			
			ex) String id = (String) session.getAttribute("memberID");
	
	2. ���� ���� ���� ���
		- ���� : Enumeration getAttributeNames();
		   ex)
		   	Enumeration enum = session.getAttributeNames();
		   	
		   	while(enum.hasMoreElements()){
		   		String name = enum.nextElement().toString();
		   		String value = seesion.getAttribute(name).toString(); 
		   	}		
 --%>
</body>
</html>