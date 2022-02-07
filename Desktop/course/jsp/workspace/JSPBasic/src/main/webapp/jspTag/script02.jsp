<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% for(int i = 1; i <=10; i++) { %>
		<%= i %><br>
	<% } %>
	
	<hr>
	
	<% for(int i =1; i <=9; i++) { %>
		3 X <%= i %> = <%= 3 * i %> <br>
	<% } %>
	
	<hr>
	
	1. 중첩반복문을 사용해서 2~9단가지 표현식을 적용하여 출력 <br>
	
	<% for(int a = 2; a <= 9; a++) { %>
		구구단 <%= a %>단 <br>
			<% for(int b = 1; b <= 9; b++) {%>
				<%=a%> X <%=b%> = <%= a*b %> <br>
			
			<% } %>
	<% } %>
	
	<hr>
	
	2. 반복문으로 체크박스 20개를 만드는데 이름을 붙여서 출력 (체크박스1, 체크박스2 ... ) <br>

	<% for(int c = 1; c <= 20; c++) { %>
	<input type="checkbox" name="number">
		체크박스 <%= c %> <br>
	<% } %>
	
</body>
</html>