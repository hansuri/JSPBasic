<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	아래의 form태그의 내용을 req_quiz_ok페이지로 post방식으로 전달
	ok페이지에서는 값을 받아서 화면에 출력 
 -->

<!-- form태그는 사용자가 입력한 값을 서버(우리의 프로젝트로) 전송할 때 사용 -->
	
	<h3> 폼 태그 </h3>
	
	<form action = "req_quiz_ok.jsp" method = "post" >
		<h3>회원가입 양식</h3>
		<hr>
		아이디:<input type="text" size="10" placeholder="8글자" name = "id" > <br>
		비밀번호:<input type="password" size="10" placeholder="5글자" name = "pw" > <br>
		
		<!-- checkbox,radio버튼은 name속석으로 하나로 묶어줘야 한다 -->
		
		관심분야
		<input type="checkbox" name="inter" value = "movie"> MOVIE
		<input type="checkbox" name="inter" value = "art"> ART
		<input type="checkbox" name="inter" value = "dance"> DANCE		
		<input type="checkbox" name="inter" value = "sing"> SING
		
		<br>
		
		전공분야 
		<input type="radio" name="major" value = "영화학과">영화학과
		<input type="radio" name="major" value = "회화과">회화과
		<input type="radio" name="major" value = "무용과">무용과
		<input type="radio" name="major" value = "성악과">성악과	
		<br>
		
		지역
		<select name="region">
			<option>서울시</option>
			<option>경기도</option>
			<option>부산시</option>
			<option>제주시</option>
		</select>
		<br>
		
		자신을 소개해보세요!<br>
		<textarea rows="5" cols="30" name= "intro" > </textarea>
		
		
		<input type="submit" value="전송하기">
		<input type="reset" value="초기화">
		<input type="file" value="파일첨부">
		
		<!-- &nbsp;--띄어쓰기 역할하는 키 --> 
			
	</form>

</body>
</html>