<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.util.Enumeration"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name;
	String value;
	
	Enumeration en = session.getAttributeNames();
	int i = 0;
	while(en.hasMoreElements()){
		i++;
		name = en.nextElement().toString();
		value = session.getAttribute(name).toString();
		
		out.println("설정된 세션의 속성 이름 [ " + i + " ] : " + name + "<br>");
		out.println("설정된 세션의 속성 값 [ " + i + " ] : " + value + "<br>" );
	}
%>
</body>
</html>