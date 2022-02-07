<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로 이동 -->
	<h3>req_video로 이동</h3>
	<a href="../../request/req_video.jsp">req_video페이지로 이동(상대경로)</a><br>
	<a href="JSPBasic/request/req_video.jsp">req_video페이지로 이동(절대경로)</a>

	<!-- a태그를 이용해서 TestServlet01로 상대경로, 절대경로로 이동(서블릿을 실행시켜서 url주소로 확인)  -->
	<h3>TestServlet01로 이동</h3>
	<a href="../../banana">TestServlet01페이지로 이동(상대경로)</a><br>
	<a href="JSPBasic/banana">TestServlet01페이지로 이동(절대경로)</a>
	
	<!-- img태그를 이용해서 java.png파일 상대경로, 절대경로 참조 -->
	<h3>java.png파일 참조이동</h3>
	<img src="../../request/img/java.png" width="100px"></a><br>
	<img src="JSPBasic/request/img/java.png" width="100px"></a>
	
	
	
</body>
</html>