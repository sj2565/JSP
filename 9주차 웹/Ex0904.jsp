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
	select 태그의 기능과 사용법
	1. 정의 : 여러 개의 항목이 나타나는 목록 상자에서 항목을 선택하는 태그
	
	2. 형식
		<select 속성1="값1" | 속성2="값2" |...>
			<option 속성1="값"> 항목 1 </option>
			<option 속성2="값"> 항목 2 </option>
			<option 속성3="값"> 항목 3 </option>
			<option 속성4="값"> 항목 4 </option>
		</select>
		
   3. select  태그의 속성
	======================================================================
	속성			속성값		설명
	----------------------------------------------------------------------
	name		텍스트		목록 상자의 이름을 설정
	size		숫자			한 번에 표시할 항목의 개수를 설정	
	multiple				다중 선택이 가능하도록 함. Ctrl 키를 눌러 목록 상장의 항목을 다중 선택
	
	4. option  태그의 속성
	======================================================================
	속성			속성값		설명
	----------------------------------------------------------------------
	value		텍스트		항목의 값을 설정
	selected				해당 항목을 초기값으로 선택
	disabled				항목을 비활성화
 --%>

	<form action="#" method="get">
		<p> <select name="city" size="3">
				<option value="서울시">서울특별시</option>
				<option value="경기도">경기도</option>
				<option value="인천시">인청광역시</option>
				<option value="충청도">충청도</option>
				<option value="전라도">전라도</option>
				<option value="경상도">경상도</option>
				<option value="강원도">강원도</option>
			</select>
		<p> <input type="submit" value="전송">
		
		<br><br><br>
		
		<p> <select name="city2">
				<optgroup label="서울특별시">
					<option value="seocho-gu">서초구</option>
					<option value="gangnam-gu">강남구</option>
					<option value="songpa-gu">송파구</option>
				</optgroup>
				<optgroup label="경기도">
					<option value="sengnam-si">성남시</option>
					<option value="suwon-si">수원시</option>
					<option value="yongin-si">용인시</option>
				</optgroup>
				
			</select>
		<p> <input type="submit" value="전송">
	</form>
</body>
</html>