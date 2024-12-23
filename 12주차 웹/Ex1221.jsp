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
	1. Filter �������̽�
	- ���� : Ŭ���̾�Ʈ�� ���� ���̿��� reqeust�� response ��ü�� ���� �޾� ����/���� �۾� �� ���������� �ʿ��� �κ��� ó���ϴ� ��.			
    - �������
    	: Filter �������̽��� ���õ� ������ �ۼ�.
    	: Filter �������̽��� import.
    	: Ŭ���� �̸� ������ Filter�� implements �Ѵ�.			
		
	ex) import javax.servlet.Filter;	
		public class Ŭ�����̸� implements Filter{
		   ...
		 }	
		 
	- �����
	1. Filter �������̽��� ���� Ŭ���� ����
		- Filter �������̽� �޼ҵ� ����
		=================================================
		�޼ҵ�			����
		=================================================
		init()		���� �ν��Ͻ��� �ʱ�ȭ �޼ҵ�.	
		doFilter()	���� ����� �ۼ��ϴ� �޼ҵ�.
		destory()	���� �ν����� ���� ���� ȣ��Ǵ� �޼ҵ�.
		
		- Filter �������̽� �޼ҵ� ��� ���
		[init() �޼ҵ��� ��� ��]
		@Override
		public void init(FilterConfig FilterConfig) throws ServletException{
			System.out.println("���� �ʱ�ȭ...");
		}
		
		[doFilter() �޼ҵ��� ��� ��]
		@Override
		public void doFilter(servletRequest request, servletResponse response,
				FilterChain filterChain) throws IOException, ServletException{
			
			System.out.println("���� ����...");
			
			String name = reqeust.getParameter("name");
			
			if(name == null || name.equals("")){
				response.setCharacterEncoding("UTF-8");
				response.setContetType("text/html; charset="UTF-8");
				PrintWriter writer = response.getWriter();
				String message = "�Էµ� name ���� null �Դϴ�.";
				writer.println(message);
				return;
			}
			filterChain.doFilter(request, response);	
		}
		
		[destroy() �޼ҵ��� ��� ��]
		@Override
		public void destroy(){
			System.out.println("���� ����...");
		}
		
	2. xml �ۼ�	
	
		<filter>
			<filter-name> Filter </filter-name>
			<filter-class> filter.AuthenFilter</filter-class>		
		</filter>
		<filter-mapping>
			<filter-name> Filter </filter-name>
			<url-pattern> Ex1223.jsp </url-pattern>
		</filter-mapping>
	
	3. jsp ���α׷��� �ۼ�
 --%>
</body>
</html>