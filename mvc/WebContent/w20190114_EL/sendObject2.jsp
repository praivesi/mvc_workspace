<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sendObject.jsp</title>
</head>
<body>
	<!-- 
		MemberBean 객체 생성
		id : abc, pw : 1234
		forward 방식으로  el03.jsp 데이터 전송
		
		el03에서는 이 데이터를 받아서 id 값을 출력
	 -->
	 
	 <jsp:useBean id="vo" class="vo.MemberBean" scope="session"></jsp:useBean>
	 <jsp:setProperty property="id" name="vo" value="abc"/>
	 <jsp:setProperty property="pw" name="vo" value="1234"/>
	 <jsp:forward page="el03.jsp"></jsp:forward>
	 
</body>
</html>