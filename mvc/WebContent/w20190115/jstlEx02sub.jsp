<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlEx02sub.jps</title>
</head>
<body>
	<!-- <c:if test="조건식">실행문</c:if> -->
	
	<h1>
		<c:if test="${param.num1 - param.num2 >= 0}"> ${param.num1} </c:if>
		<!-- JSTL에는 일반 if 문과는 달리 else 혹은 else if 문이 없다 -->
		<c:if test="${param.num1 - param.num2 < 0}"> ${param.num2} </c:if>
	</h1>
</body>
</html>