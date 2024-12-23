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
	** 세션
	1. 클라이언트와 웹 서버 간의 상태를 지속적으로 유지하는 방법
	2. 웹 서버에서만 접근이 가능하므로 보안 유지에 유리하며 데이터를 저장하는데 한계가 없음
	3. 세션 내장 객체 메소드의 종류
	
	====================================================================================================
	메소드						반환 유형					설명
	====================================================================================================
	getAttribute(String name)	java.lang.Object	세션 속성 이름이 name인 속성 값을 Object형으로 반환
													해당되는 속성 이름이 없을 때는 null 반환 
	
	getAttributeNames()			java.util.Enumeration	세션 속성 이름을  Enumeration 객체 타입으로 반환
	
	getCreationTime()			long				세션이 생성된 시간을 반환
													1970년 1월 1일 0시 0초부터 현재 세션이 생성된 시간까지
													경과한 시간을 1/1,000 초 값으로 반환												
																									
	getId()						java.lang.String	세션에 할당된 고유 아이디를 String 형으로 반환
	
	getLastAccessedTime()		long				해당 세션에 클라이언트가 마지막으로  reqeust를 보낸 시간을 반환
	
	getMaxInactivInterval(int Interval)	int			해당 세션을 유지하기 위해 세션 유지 시간을 반환
													기본 값은 1,800초(30분)
													
	isNew()						boolean				해당 세션의 생성 여부를 반환
	
	removeAttribute(String name)	void			세션 속성 이름이 name인 속성을 제거
	
	setAttribute(String name, Object value)	void	세션 속성 이름이 name인 속성에 value를 할당
	
	setMaxInactiveInterval(int interval)	void	해당 세션을 유지하기 위한 세션 유지 시간을 초 단위로 설정
	
	Invalidate()									현재 세션에 저장된 모든 세션 속성을 제거												
	
	4. 세션 기능
	- 세션 생성
	- 세션 정보
	- 세션 삭제
	- 세션 유효 시간 설정
	
	4-1 세션 생성
	- session 내장 객체의 setAttribute() 메소드를 사용	
	- setAttribute() 메소드 속성
		void setAttribute(String name, Object value)
		
		: 첫 번째 매개변수 name은 세션으로 사용할 세션 속성 이름을 나타냄. 세션에 저장된 특정 값을 찾아오기 위한 키로 사용
		: 두 번째 매개변수 value은 세션의 속성값을 나타냄.  세션 속성값은  Object 객체 타입만 가능하기 때문에
		  int, double, char 등의 기본 타입은 사용할 수 없음
	
		ex) session.setAttribute("memeberId", "admin");	  
 --%>
</body>
</html>