<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlEx01.jsp</title>
</head>
<body>
	<!-- c:set - 변수를 선언하고 그 변수를 초기화 하는 기능 
			   - scope도 지정 가능
	-->
	<c:set var="num1" value="100" scope="request"/>
	<c:set var="num2" value="200" scope="request"/>
	<jsp:forward page="nextPage.jsp"></jsp:forward>
</body>
</html>