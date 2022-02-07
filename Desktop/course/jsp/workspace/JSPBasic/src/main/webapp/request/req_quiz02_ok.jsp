<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");	

	String name = request.getParameter("name");  
	double cm = Double.parseDouble(request.getParameter("cm"));
	double kg = Double.parseDouble(request.getParameter("kg"));
    
	double a = cm/100;
	double bmi = kg / (a * a);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	[ <%=name %> ]의 BMI지수 : <%=bmi %>
	
	<% if (bmi >= 25) { %>
		<b>과체중입니다.</b>
	<% } else if (bmi <= 18) { %>
		<b>저체중입니다.</b>
	<% } else { %>
		<b>정상입니다.</b>
	<% } %>

</body>
</html>