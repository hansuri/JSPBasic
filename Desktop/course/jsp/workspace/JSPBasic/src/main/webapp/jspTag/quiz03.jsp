<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	Random ran = new Random();
	String[] jobs = { "어피치", "라이언", "무지", "제이지", "프로도", "튜브"}; //랜덤한 참가자 명단
	List<String> list = new ArrayList<>();//참가자가 저장될 list 
%>

<%
	/*
	1. 랜덤한 참가자를 추출해서 list에 순서대로 저장한다 
	2. 마지막에 참가한 사람과 중복된 사람의 명단을 숫자로 출력한다 
	3. 리스트 크기가 10이되면 list.clear() 를 이용해서 리스트를 비운다 
	*/
%>
    
	<% int a = ran.nextInt(jobs.length); 
		list.add(jobs[a]); %>
	
	<% int count = 0;
	   for(String s : list) {
			if (s.equals(jobs[a])) {
				count++;
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

	<p>
	<h3>[<%=jobs[a]%>]</h3> 님이 입장 <br>
	현재 같은 카카오 프렌즈는 <%=count %>명 입니다. 
	</p>
	
	
	<hr>
	
	<h1>현재 구성정보</h1>
	<%=list %> (<%= list.size()%>명 참가 중)
	
	<% if (list.size() >= 10 ) { 
		list.clear();
	} %>
	
	
	
	

</body>
</html>