<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.Arrays" %>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");	
	String [] inter = request.getParameterValues("inter");
	String major = request.getParameter("major");
	String region = request.getParameter("region");
	String intro = request.getParameter("intro");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	넘어온 ID : <%=id %> <br>
	넘어온 PW : <%=pw %> <br>
	넘어온 관심분야 : <%=Arrays.toString (inter) %> <br>
	넘어온 전공 : <%=major %> <br>
	넘어온 지역 : <%=region %> <br>
	넘어온 자기소개 : <%=intro %> <br>

</body>
</html>

