<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%--
	4-3 세션 삭제
	1. 단일 세션 삭제하기		
		- 세션에 저장된 하나의 세션 속성 이름을 삭제하려면 removeAttribute() 메소드를 사용
		- 형식 : void removeAttribute(String name)
			ex) session.removeAttribute("memberID");						
		
	2. 다중 세션 삭제하기
		- 세션에 저장된 모든 세션 속성 이름을 삭제하려면 invalidate() 메소드를 사용
		- 형식 : void invalidate()
			ex) : session.invalidate();
 --%>
</body>
</html>