<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlEx05.jsp</title>
</head>
<body>
	<%
		int num1 = 100, num2 = 0;
	%>
	
	<c:catch var="e">
	<%
		int result = num1 / num2;
		out.println("<h2>나눗셈의 결과는 ? " + result + "</h2>");
	%>
	</c:catch>
	
	<c:redirect url="https://search.naver.com/search.naver">
		<c:param name="query" value="미세먼지"></c:param>
	</c:redirect>
</body>
</html>