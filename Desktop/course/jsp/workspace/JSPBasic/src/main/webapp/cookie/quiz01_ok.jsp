<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie[] arr = request.getCookies();
	
	String id = "";
	if(arr != null) {
		for(Cookie coo : arr) {
			if( coo.getName().equals("show") ) {
				id = coo.getValue();
			}
		}
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	쿠키 show의 값 : <%=id %>

</body>
</html>