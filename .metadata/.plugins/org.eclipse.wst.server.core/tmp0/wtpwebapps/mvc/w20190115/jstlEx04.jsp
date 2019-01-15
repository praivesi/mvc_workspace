<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlEx04.jsp</title>
</head>
<body>
	<!-- 반복문 -->
	<h1>
		<c:forEach begin="1" end="10" step="1">하이</c:forEach>
	</h1>
	<hr/>
	<h2>
		<c:forEach var="i" begin="1" end="10" step="2">${i}</c:forEach>
	</h2>
</body>
</html>