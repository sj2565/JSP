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
	** ����
	1. Ŭ���̾�Ʈ�� �� ���� ���� ���¸� ���������� �����ϴ� ���
	2. �� ���������� ������ �����ϹǷ� ���� ������ �����ϸ� �����͸� �����ϴµ� �Ѱ谡 ����
	3. ���� ���� ��ü �޼ҵ��� ����
	
	====================================================================================================
	�޼ҵ�						��ȯ ����					����
	====================================================================================================
	getAttribute(String name)	java.lang.Object	���� �Ӽ� �̸��� name�� �Ӽ� ���� Object������ ��ȯ
													�ش�Ǵ� �Ӽ� �̸��� ���� ���� null ��ȯ 
	
	getAttributeNames()			java.util.Enumeration	���� �Ӽ� �̸���  Enumeration ��ü Ÿ������ ��ȯ
	
	getCreationTime()			long				������ ������ �ð��� ��ȯ
													1970�� 1�� 1�� 0�� 0�ʺ��� ���� ������ ������ �ð�����
													����� �ð��� 1/1,000 �� ������ ��ȯ												
																									
	getId()						java.lang.String	���ǿ� �Ҵ�� ���� ���̵� String ������ ��ȯ
	
	getLastAccessedTime()		long				�ش� ���ǿ� Ŭ���̾�Ʈ�� ����������  reqeust�� ���� �ð��� ��ȯ
	
	getMaxInactivInterval(int Interval)	int			�ش� ������ �����ϱ� ���� ���� ���� �ð��� ��ȯ
													�⺻ ���� 1,800��(30��)
													
	isNew()						boolean				�ش� ������ ���� ���θ� ��ȯ
	
	removeAttribute(String name)	void			���� �Ӽ� �̸��� name�� �Ӽ��� ����
	
	setAttribute(String name, Object value)	void	���� �Ӽ� �̸��� name�� �Ӽ��� value�� �Ҵ�
	
	setMaxInactiveInterval(int interval)	void	�ش� ������ �����ϱ� ���� ���� ���� �ð��� �� ������ ����
	
	Invalidate()									���� ���ǿ� ����� ��� ���� �Ӽ��� ����												
	
	4. ���� ���
	- ���� ����
	- ���� ����
	- ���� ����
	- ���� ��ȿ �ð� ����
	
	4-1 ���� ����
	- session ���� ��ü�� setAttribute() �޼ҵ带 ���	
	- setAttribute() �޼ҵ� �Ӽ�
		void setAttribute(String name, Object value)
		
		: ù ��° �Ű����� name�� �������� ����� ���� �Ӽ� �̸��� ��Ÿ��. ���ǿ� ����� Ư�� ���� ã�ƿ��� ���� Ű�� ���
		: �� ��° �Ű����� value�� ������ �Ӽ����� ��Ÿ��.  ���� �Ӽ�����  Object ��ü Ÿ�Ը� �����ϱ� ������
		  int, double, char ���� �⺻ Ÿ���� ����� �� ����
	
		ex) session.setAttribute("memeberId", "admin");	  
 --%>
</body>
</html>