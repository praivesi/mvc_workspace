<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlEx03sub02.jsp</title>
</head>
<body>
	<!-- 자바 switch case 문과 비슷한 문법 -->
	<h1>
		<c:choose>
			<c:when test="${sessionScope.visitor == 0 }">처음 뵙겠습니다.</c:when>
			<c:when test="${sessionScope.visitor == 1 }">또 보네요. </c:when>
			<c:when test="${sessionScope.visitor == 2 }">자주 보네요.</c:when>
		</c:choose>
	</h1>
</body>
</html>