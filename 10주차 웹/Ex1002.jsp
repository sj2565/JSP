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
 1. MultipartRequest 이용한 파일업로드
 - 배포 사이트 : http://www.servlets.com/cos
 - MultipartRequet 클래스 생성
    => MultipartRequet 클래스 : 파일업로드를 하기 위한 다양한 생성자를 제공
    							한글 인코딩 값을 쉽게 얻을 수 있고,
    							업로드되는 파일이 서버에 저장된 기존 파일과 중복될 때 자동으로 변경해주는 생성자			 
 <@ page import="com.oreilly.servlet.*">
 <@ page import="com.oreilly.servlet.multipart.*"> 	
  MultipartRequet  MR = new MultipartRequet();
  - MultipartRequet 형식
  MultipartRequet(javax.servlet.http.HttpServletRequest request,
  					java.lang.String saveDirectory,
  					int maxPostSize,
  					java.lang.String encoding,
  					FileRenamePolicy policy)
  매개변수			설명
  =======================================================================================
  request		Request 내장 객체를 설정
  saveDirectory	서버의 파일 저장 경로를 설정합니다.
  maxPostSize	파일의 최대 크기(바이트 단위)를 설정합니다.
  encoding		인코딩 유형을 설정합니다.					
  policy 		파일명 변경 정책을 설정합니다.
  				saveDirectory에 파일명이 중복되는 경우 덮어쓰기 여부를 설정하며, 설정하지 않으면 덮어씁니다.
 ex)
 <@ page import="com.oreilly.servlet.*">
 <@ page import="com.oreilly.servlet.multipart.*">
 MultipartRequet  multi = new MultipartRequet(request,
 											"C:\upload",
 											5*1024*1024,
 											"utf-8",
 											new DefaultFileRenamePolicy()			
 );	
 - MultipartRequet  메소드의 종류
 ====================================================================================================
 메소드							유형				설명
 ====================================================================================================
 getContentType(String name)	String			업로드된 파일의 콘텐츠 유형을 반환
 												업로드된 파일이 없는 경우  null을 반환				
 getParameter(String name)		String			요청 파라미터 이름이 name 인 값을 전달받는다.
 getParameterNames()			java.util.Enumeration
 												요청 파라미터 이름을 Enumeration 객체 타입으로 반환합니다.								
 getFile(String name)			java.io.File	서버에 업로드된 파일에 대한 파일 객체를 반환한다.
 												업로드된 파일이 없는 경우  null을 반환
 getFileNames()					java.util.Enumeration
 												폼 페이지에 input  태그 내 type  속성 값이  file로 설정된
 												요청 파라미터의 이름을 반환																									
 getFilesystemName(String name)	String			사용자가 설정하여 서버에 실제로 업로된 파일명을 반환합니다.
 												파일명이 중복되면 변경된 파일명을 반환				
 getOriginFileName(String name)	String			사용자가 업로드된 실제 파일명을 반환
 --%>
</body>
</html>