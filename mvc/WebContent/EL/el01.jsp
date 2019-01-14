<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el01.jsp</title>
</head>
<body>
	<!-- EL(Expression Language)
		: jsp (자바를 웹에서  쓸수 있게 해주는 페이지, 언어 아님...) 에서 저장객체를 출력할 때
			스크립틀릿(<%--<% %> --%>) 기술을 전혀 쓰지 않을 수 있도록 해주는 언어
		: 라이브러리에 추가만 해두면 기본적으로 지원하기 때문에 따로 설정할 것이 없음
		
	-->
	
	<!--  ex) 다른 페이지에서 보낸 id 파라미터 값을 가져와서 출력 -->
	
	<!-- form action 공부 필요 -->
	<%-- <%
		 String id = request.getParameter("id");
	%>
	
	<h2>ID : <%=id %></h2> --%>
	
	<!-- ex) el로 같은 코드 -->
	
	<h2>ID : ${param.id }</h2>
</body>
</html>