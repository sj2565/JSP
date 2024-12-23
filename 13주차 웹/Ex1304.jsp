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
	4-2 세션 정보
	1. 단일 세션 정보 얻기
		- 세션에 저장된 하나의 세션 속성 이름에 대한 속성 값을 얻어오려면 getAttribute() 메소드를 사용
		- getAttribute() 메소드는 반환 유형이 Object형이므로 반드시 형 변환을 하여 사용해야 함
			
			Object getAttribute(String name)
			
			: 첫 번째 매개변수 name는 세션에 저장된 세션 속성 이름
			=> 해당 속성 이름이 없는 경우 null을 반환
			
			ex) String id = (String) session.getAttribute("memberID");
	
	2. 다중 세션 정보 얻기
		- 형식 : Enumeration getAttributeNames();
		   ex)
		   	Enumeration enum = session.getAttributeNames();
		   	
		   	while(enum.hasMoreElements()){
		   		String name = enum.nextElement().toString();
		   		String value = seesion.getAttribute(name).toString(); 
		   	}		
 --%>
</body>
</html>