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
	1. Filter 인터페이스
	- 정의 : 클라이언트와 서버 사이에서 reqeust와 response 객체를 먼저 받아 사전/사후 작업 등 공통적으로 필요한 부분을 처리하는 것.			
    - 사용형식
    	: Filter 인터페이스와 관련된 파일을 작성.
    	: Filter 인터페이스를 import.
    	: 클래스 이름 우측에 Filter를 implements 한다.			
		
	ex) import javax.servlet.Filter;	
		public class 클래스이름 implements Filter{
		   ...
		 }	
		 
	- 사용방법
	1. Filter 인터페이스의 구현 클래스 구현
		- Filter 인터페이스 메소드 종류
		=================================================
		메소드			설명
		=================================================
		init()		필터 인스턴스의 초기화 메소드.	
		doFilter()	필터 기능을 작성하는 메소드.
		destory()	필터 인스턴의 종료 전에 호출되는 메소드.
		
		- Filter 인터페이스 메소드 사용 방법
		[init() 메소드의 사용 예]
		@Override
		public void init(FilterConfig FilterConfig) throws ServletException{
			System.out.println("필터 초기화...");
		}
		
		[doFilter() 메소드의 사용 예]
		@Override
		public void doFilter(servletRequest request, servletResponse response,
				FilterChain filterChain) throws IOException, ServletException{
			
			System.out.println("필터 수행...");
			
			String name = reqeust.getParameter("name");
			
			if(name == null || name.equals("")){
				response.setCharacterEncoding("UTF-8");
				response.setContetType("text/html; charset="UTF-8");
				PrintWriter writer = response.getWriter();
				String message = "입력된 name 값은 null 입니다.";
				writer.println(message);
				return;
			}
			filterChain.doFilter(request, response);	
		}
		
		[destroy() 메소드의 사용 예]
		@Override
		public void destroy(){
			System.out.println("필터 해제...");
		}
		
	2. xml 작성	
	
		<filter>
			<filter-name> Filter </filter-name>
			<filter-class> filter.AuthenFilter</filter-class>		
		</filter>
		<filter-mapping>
			<filter-name> Filter </filter-name>
			<url-pattern> Ex1223.jsp </url-pattern>
		</filter-mapping>
	
	3. jsp 프로그램을 작성
 --%>
</body>
</html>