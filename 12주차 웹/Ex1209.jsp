<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 
	* Web.xml 파일을 이용한 예외 처리 
	- web.xml 파일을 통해 오류 상태와 오류 페이지를 보여주는 방법
	- 사용되는 요소 : <error-page> .....  </error-page>
	
	ex) <web-app >
	 		 <error-page>
				<error-code> ... </error-code> => 오류 코드를 설정하는 데 사용.
				<exception-type> .... </exception-type>
								=> 자바 예외 유형의 정규화된 클래스 이름을 설정하는데 사용.
				<location> ... </location> => 오류 페이지의 URL을 설정하는데 사용.				
			</error-page>
		</web-app>
		
	- 오류 코드
	==============================================================================
	코드			설명
	==============================================================================
	200		요청이 정상적으로 처리됩니다.
	307		임시로 페이지가 리다이렉트됩니다.
	400		클라이언트의 요청이 잘못된 구문으로 구성됩니다.
	401		접근이 허용되지 않습니다.
	404		지정된 URL을 처리하기 위한 자원이 존재하지 않습니다.(페이지 없음)
	405		요청된 메소드가 허용되지 않습니다.
	500		서버 내부의 에러입니다. (JSP에서 예외가 발생하는 경우)
	503		서버가 일시적으로 서비스를 제공할 수 없습니다.(예를들면, 서버 과부하나 보수 중인 경우
 -->
</body>
</html>