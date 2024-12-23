<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 
   원인 : JSTL 이  Tomcat 컨테이너에 포함되어 있지 않아서 발생   
   해결방법 : 
    - 별도로 설치하거나 JAR 파일을 검색(http://jakarta.apache.org)
    	1. http://jakarta.apache.org/ 접속 한 후, 좌측 네비게이션바의 Taglibs 를 클릭
    	2. Apache Taglibs 항목의 Apache Standard Taglib 클릭
    	3. Standard 1.1 download 클릭하고 binaries 클릭한 후 jakarta-taglibs-standard-1.1.2.zip 클릭
		4. 압축을 해제한 후 jakarta-taglibs-standard-1.1.2 > jakarta-taglibs-standard-1.1.2 > lib 파일 안에 있는 jstl.jar, standard.jar 파일을 복사해서 사용하시는 서버에 넣어 사용

    - 또는 WEB-INF-lib 디렉토리에 복사
   		1. 메이븐 접속 사이트 : http://mvnrepository.com/
   		2. 검색사이트 - jstl 입력 후 클릭 - javax.servlet 클릭 - 1.2.x 버전 클릭 - JAR 파일 다운로드
   		3. 검색사이트 - standard 입력 후 클릭 - Standard 클릭 - 1.1.2 버전 클릭 - JAR 파일 다운로드
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	
	browser 변수 값 설정

	<c:out value="1" />
	

</body>
</html>