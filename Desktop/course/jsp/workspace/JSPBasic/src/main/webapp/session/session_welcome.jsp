<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	//세션이 없는 사람들은 로그인 페이지로 보낸다 
	if(session.getAttribute("user_id") == null ) {
		response.sendRedirect("session_login.jsp");
	}

	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_nick");

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=id %> ( <%=name %> )님 환영합니다.
	
	<a href="session_logout.jsp">로그아웃</a>
	
</body>
</html>