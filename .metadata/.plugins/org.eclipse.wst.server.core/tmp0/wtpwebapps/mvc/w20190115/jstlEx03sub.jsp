<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlEx03sub.jsp</title>
</head>
<body>
	<h1>
		<c:if test="${sessionScope.visitor == 0 }">처음 뵙겠습니다.</c:if>
		<c:if test="${sessionScope.visitor != 0 }">또 오셨네요.</c:if>
	</h1>
</body>
</html>