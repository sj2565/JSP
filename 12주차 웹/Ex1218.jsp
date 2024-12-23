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
			out.print("에러.");
		}
	%>
	<!-- 
		서브릿에서의 JSP 호출(forward()와 include() 방식)
		- forward() 메소드 방식
			: jsp 페이지를 호출하는 순간 서블릿 프로그램이 실행을 멈추며 JSP 페이지로 넘어가 그곳에 실행하고 프로그램이 끝닙니다.
		- include() 메소드 방식
			: JSP 페이지가 실행된 후 나머지 서블릿 프로그램이 실행됩니다.
	 -->
</body>
</html>