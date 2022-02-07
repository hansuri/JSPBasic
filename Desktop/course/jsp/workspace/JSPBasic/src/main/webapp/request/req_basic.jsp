<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//request는 자동생성되며 request에 .을 찍어 바로 사용
	//request에는 브라우저에 대한 정보와 많은 값이 담겨있다 
	StringBuffer url = request.getRequestURL();//url값
	
	String uri = request.getRequestURI();//url값 
	
	String path = request.getContextPath();//프로젝트의 구분경로 
	
	String addr = request.getRemoteAddr();

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	url:<%=url %><br>
	uri:<%=uri %><br>
	path:<%=path %><br>
	접속주소 <%=addr %><br>

</body>
</html>