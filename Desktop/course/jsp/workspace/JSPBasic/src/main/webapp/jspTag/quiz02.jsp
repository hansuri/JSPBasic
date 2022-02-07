<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//랜덤 로또번호 만들기
	/*
	1. 스크립트릿에 정수를 저장하는 list선언
	2. 1~45까지 랜덤한 정수를 만들고 리스트에 추가 
	3. 중복되지 않는 숫자 6개를 저장하면 되는데 값의 존재여부는 list.contains(값)으로 확인
	4. size()가 6이 되면 로또번호가 완성된다. (화면에 출력)
	
	5. set구조를 이용해서도 처리 가능 
		(새로고침하면 전부 새로운 숫자로 변경)
	*/
%>

<%
	List<Integer> list = new ArrayList<>(6);
	Random ran = new Random();
	
	while (list.size() < 6 ) {
		int num = ran.nextInt(45)+1;
		if (! list.contains(num)) {
			list.add(num);
		}
	
	}
	
	//set 이용
	HashSet<Integer> set = new HashSet<>(); //중복x
	
	while(set.size() < 6) {
		set.add (ran.nextInt(45) + 1);
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	오늘의 로또번호 : <%=list.toString() %>
	
	<hr>
	
	오늘의 로또번호 : <%=set.toString() %>

</body>
</html>