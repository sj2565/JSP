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
	2. Commons-FileUpload를 이용한 파일 업로드
	- 배포 사이트 : http://commons.apache.org/downloads
	  파일 : commons-fileupload-1.4.jar, commons-io-2.8.0.jar
	- Commons-FileUpload 패키지: 서버의 메모리상에서 파일 처리가 가능하도록 지원
	  							Commons-io 패키지 바탕으로 해서 작성됨
	  							웹 브라우저에서 서버로 파일을 업로드할 때 오픈 라이브러리 commons-fileupload-1.4.jar, commons-io-2.8.0.jar 필요함
	
	- Commons-FileUpload 패키지에서 사용되는 클래스
	1. DiskFileUpload 클래스
	2. FileItem 클래스
	
	- DiskFileUpload 클래스의 메소드
	===================================================================================
	메소드						유형			설명
	===================================================================================
	setRepositoryPath(String repositoryPath)
							 	void		업로드된 파일을 임시로 저장할 디렉토리를 설정합니다.
	setSizeMax(long sizeMax)	void		최대 파일의 크기를 설정합니다.
	setSizeThreshold(int sizeThreshold)
								void		메모리상에 저장할 최대 크기를 설정합니다.				
	parseRequest(HttpServletRequst req)
								List(FileItem) multipart/form-data 유형의 요청 파라미터를 가져옵니다.													 	
	
	- FileItem 클래스의 메소드
	===================================================================================
	메소드				유형				설명
	==================================================================================
	isFormField()		boolean		요청 파라미터가 파일이 아니라 일반 데이터인 경우  true를 반환
									조건문(if)에서 보통 사용
									ex)  FileItem item = (FileItem) params.next(); 
									     if(item.isFormField()) {...}	
									
	getFieldName()		String		요청 파라미터의 이름을 얻어옵니다.
	getString()			String		기본 문자 인코딩을 사용하여 요청 파라미터의 값을 얻어옵니다.
	getString(String encoding)
						String		설정한 문자 인코딩(String encoding)을 사용하여 요청 파라미터값을 얻어옵니다.								
	getName()			String		업로드된 파일경로에 포함된 이름을 얻어옵니다.
	getSize()			long		업로드된 파일의 크기를 얻어옵니다.
	get()				byte[]		업로드된 파일을 바이트 배열로 얻어옵니다.
	isInMemory()		boolean		업로드된 파일이 메모리에 저장된 상태인 경우 true를 반환하고,
									임시 디렉토리에 저장된 경우 false 반환					
	delete()			void		파일과 관련된 자원을 삭제합니다.
									메모리상에 저장된 경우 할당된 메모리를 반환하고, 임시 파일로 저장된 경우 파일을 삭제								 							  
	write()				void		파일과 관련된 자원을 저장합니다.
	getContentType()	String		웹브라우저가 전송하는 콘텐츠 유형을 반환하고, 정의되어 있지 않은 경우 null을 반환한다.
	- Commons-FileUpload 패키지 사용 예
	* jsp 파일 맨 위에 추가
	<@ page import ="org.apache.commons.fileupload.*" @>
	<@ page import = "java.io.*" @>
	<@ page import = "java.util.*" @>
	
	* jsp 본문(body)에 Commons-FileUpload 패키지 사용
	
	<%
		String fileUploadPath = "C:\\upload";
		// 1. Commons-fileUpload 패키지에 포함되어 있는 DiskfileUpload 객체를 생성
		 DiskfileUpload upload = new DiskfileUpload();
		// 2. 생성된 객체를 통해 DiskfileUpload 클래스가 제공하는 메소드를 사용하여 웹 브라우저가 전송한
		//    multipart/form-data 유형의 요청 파라미터를 가져옵니다.
		List items = upload.parseRequest(request);  
		Iterator params = items.iterator();
		while(params.hasNext()){
		// 3. FileItem  클래스의 메소드를 사용하여 요청 파라미터가 일반 데이터인지 파일인지 분석 및 처리하여 파일을 업로드한다.
		}
		- Enumeration과 Iterator 차이점		
		: java.util 패키지에 포함된 반복자 인터페이스
		: 같은 기능 => 개별 요소를 처음부터 끝ㄲ따지 순차적으로 넘어가며 개별 요소에 접근할 수 있다.
		: 차이점 => snap-shot과  fail-fast 지원 여부	
		: snap-shot => 원본 데이터의 사본에 대한 반복을 실행
		               문제점 : 비용 발생과 원본 불일치 발생
		: fail-fast : Iterator에지 지원하는 기능
					  snap-shot를 찍지 않고 반복을 진행하는 중에 원본 데이터에 변경이 일어나면 예외를 발생시켠 반복을 중지
		: Enumeration : Enumeration의 기능을 확장해서  Collection 인터페이스를 상속받은 모든 컬렉션(List, Set, Vector)을 사용
						자바초기에는 Hashtable, Vector에서 사용가능	 
		: Iterator : Collection 인터페이스를 구현상속한 모든 컬렉션 클래에서 사용가능			  	
	%>
 --%>
</body>
</html>