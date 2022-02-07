<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 스크립트릿, 선언자, 표현식을 적절히 사 -->
    <!-- 10번째 방문자마다 당첨 출력 -->
    
    <%!
    	int total = 0;
    %>
    
    <% 
   		Random ran = new Random(); 
    	int each = ran.nextInt(8) + 2;
    	
    	total++;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	오늘 총 방문자 : <%=total %> <br>
	
	<hr>
	<% if(total % 10 == 0) { %>
		당첨! <%= total %>번째 방문자 입니다!
	<% } %>
	
	<hr>
	<h3>랜덤 구구단 <%=each %>단 </h3>
	<% for(int i = 1; i <= 9; i++) { %>
		<%=each %> X <%=i%> = <%=each * i %> <br>
	<% } %>

</body>
</html>