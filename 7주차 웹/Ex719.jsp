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
	out 내장 객체
	
	===========================================================================================
	메소드				반환값		사용용도
	===========================================================================================
	print(여러 자료 값)	void		여러 자료유형을 출력
	
	println(여러 자료 값)	void		여러 자료유형을 출력하고 현재 줄을 종료
	
	clearBuffer()		void		버퍼의 현재 내용물을 제거
	
	flush()				void		버퍼 크기 지정
	
	clear()				void		버퍼의 내용물을 제거
	
	close()				void		스트림을 닫음
	
	getBufferSize()		int			버퍼의 전체 크기를 반환
	
	getRemaining()		int			버퍼의 남아 있는 크기를 반환
	
	isAutoFlush()		boolean		현재 autoFlush 상태를 반환	
	
 --%>
 
 	<h2> 현재 페이지의 출력 버퍼 상태</h2>
 	
 	초기 출력 버퍼 크기 : <%= out.getBufferSize() %> byte <p>
 	남은 출력 버퍼 크기 : <%= out.getRemaining() %> byte <p>
 	autoFlush : <%= out.isAutoFlush() %>
 
</body>
</html>