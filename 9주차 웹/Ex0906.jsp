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
	textare 태그의 기능과 사용법
	1. 정의 : 여러 줄의 텍스를 입력할 수 있는 태그 
	
	2. 형식
		<textarea cols="값" rows="값">
			
		</textarea>
		
   3. textarea  태그의 속성
	======================================================================
	속성			속성값		설명
	----------------------------------------------------------------------
	name		텍스트		이름을 설정
	cols		숫자			입력할 텍스트 영역의 너비열 크기를 설정
	rows		숫자			입력할 텍스트 여역의 높이행 크기를 설정
	wrap		off			줄 바꿈을 설정
							wrap="off" : 줄바꿈을 하지 않고 문장을 입력할 때 수평 스크롤바가 생기고 
							옆으로 계속 문장이 입력됨.
				soft		wrap="soft" : Enter 를 누르지 않아도 텍스트라인 끝에서 장동으로 행이 바뀝니다.
				hard		wrap="hard" : soft 상태와 비슷하며 실제 내용을 서버에 전송할 때 캐리지 리턴 문자를 전달합니다..
 --%>
 	<h3> 회원가입 </h3>
 	<hr>
 	
 	<form action="#" name="member" method="post">
 		<p> 아 이 디 : <input type="text" name="id"> <input type="button" value="아이디 중복검사">
 		<p> 비밀번호 : <input type="password" name="passwd">
 		<p> 이름 : <input type="text" name="name">
 		<p> 연락처 : <select name="phone1">
 						<option value="010">010</option>
 						<option value="011">011</option>
 						<option value="016">016</option>
 						<option value="017">017</option>
 						<option value="019">019</option>
 					</select>-<input type="text" maxlength="4" size="4" name="phone2">
 					-<input type="text" maxlength="4" size="4" name="phone3">
 		
 		<p> 성별 : <input type="radio" name="sex" value="남성" checked> 남성
 				  <input type="radio" name="sex" value="여성" > 여성
 		<p> 취미: 독서<input type="checkbox" name="hobby1" checked>
 				 운동<input type="checkbox" name="hobby2">		  
 				 영화<input type="checkbox" name="hobby3">
 				 등산<input type="checkbox" name="hobby4">
 				 여행<input type="checkbox" name="hobby5">
 				 수영<input type="checkbox" name="hobby6">
 				 기타<input type="checkbox" name="hobby7">
 		<p><textarea name="comment" cols="30" rows="3" wrap="soft" placeholder ="가입인사를 입력해주세요.">
 		   </textarea> 		 	 
		<p> <input type="submit" value="가입하기">
			<input type="reset" value="다시쓰기"> 	
 	</form>
</body>
</html>