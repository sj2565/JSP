<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	application 객체
	
	===========================================================================================
	메소드						반환값		사용용도
	===========================================================================================

	getServerInfor()			String		JSP 컨테이너의 이름과 버전 반환
	getAttribute(String name)	Object		웹 응용에서 지정된 이름의 속성을 반환
	log(String msg)				void		지정된 msg의 로그를 저장
	setAttribute(String name, Object object)	void	웹 응용에서 지정된 이름으로 object를 저장
	removeAttribute(String name)	void	웹 응용에서 지정된 이름의 속성을 삭제


	exception 객체
	
	===========================================================================================
	메소드					반환값		사용용도
	===========================================================================================

	getMessage()			String		예외를 표시하는 문자열을 반환
	toString()				String		예외 자체 문자열을 반환
    printStackTrace()		void		표준 출력으로 스택 추적 정보 출력

 --%>
 
 	<%@ page isErrorPage="true" %>
 	
 	<h2> 예외처리 페이지</h2>
 	
 	오류 문자열[exception.toString()] : <%=exception.toString() %> <br>  
 	오류 메시지[exception.getMessage()] : <%=exception.getMessage() %> 
 	
 	
 	
 	
 	
 	
 	
 	
 	
 
 
</body>
</html>