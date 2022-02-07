<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idCheck = request.getParameter("idCheck");

	
	/*
	1. id=abc , pw=1234이면 로그인 성공이라고 간주하고 (user_id, 아이디)쿠키를 생성
	2. 로그인 실패시 다시 로그인 페이지로 리다이렉트 
	3. 로그인 성공시 cookie_ex01_welcome으로 리다이렉트해서 화면에 "id님이 로그인중입니다" 출력
	*/

	if (id.equals("abc") && pw.equals("1234") ) { 
		Cookie coo = new Cookie("user_id", id);
		coo.setMaxAge(1800); 
		response.addCookie(coo);
		
		//아이디 기억하기 쿠키
		if( idCheck != null ) {
			Cookie check = new Cookie ("idcheck", id);
			check.setMaxAge(20); //20초 
			response.addCookie(check);
		}
		
		response.sendRedirect("cookie_ex01_welcome.jsp");
		
		} else {
		response.sendRedirect("cookie_ex01.jsp");
		}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	

</body>
</html>