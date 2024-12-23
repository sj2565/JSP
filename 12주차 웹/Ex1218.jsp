<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		try{
			String num1 = request.getParameter("num1");
			String num2 = request.getParameter("num2");
			int a = Integer.parseInt(num1);
			int b = Integer.parseInt(num2);
			int c = a/b;
			out.print(num1 + " / " + num2 + " = " + c);
		}catch(Exception e){
			RequestDispatcher dispathcer = request.getRequestDispatcher("Ex1219.jsp");
			dispathcer.forward(request, response);
		}finally{
			out.print("����.");
		}
	%>
	<!-- 
		���긴������ JSP ȣ��(forward()�� include() ���)
		- forward() �޼ҵ� ���
			: jsp �������� ȣ���ϴ� ���� ���� ���α׷��� ������ ���߸� JSP �������� �Ѿ �װ��� �����ϰ� ���α׷��� ���մϴ�.
		- include() �޼ҵ� ���
			: JSP �������� ����� �� ������ ���� ���α׷��� ����˴ϴ�.
	 -->
</body>
</html>