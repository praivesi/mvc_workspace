<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- el로 사칙연산 값 출력해보세요 -->
	<h1>두 값의 합 : ${requestScope.num1 + requestScope.num2}</h1>
	<h1>두 값의 차 : ${requestScope.num1 - requestScope.num2}</h1>
	<h1>두 값의 곱 : ${requestScope.num1 * requestScope.num2}</h1>
	<h1>두 값의 몫 : ${requestScope.num1 / requestScope.num2}</h1>

</body>
</html>