<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
	form으로 넘어온 값과 session 저장된 값을 비교하여 
	같은 값이면 authYN이라는 인증성공 세션을 생성하고 
	reserve.jsp로 리다이렉트 한다 
	
	두 값이 다르면 다시 인증페이지로 리다이렉트 
	*/
	
	String code = request.getParameter("code");
	String auth = (String)session.getAttribute("auth");

	if( code.equals(auth)) {
		session.setAttribute("authYN", "인증성공");
		
		response.sendRedirect("reserve.jsp");
	} else {
		response.sendRedirect("auth.jsp");
	}


%>
