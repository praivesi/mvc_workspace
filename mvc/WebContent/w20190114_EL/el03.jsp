<%@page import="vo.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	<h2>${vo.id }</h2> --%>
	
	<%-- <%
		Object obj = session.getAttribute("vo");
		if(obj != null)
		{
			MemberBean vo = (MemberBean)obj;
			out.println(vo.getId());
			out.println(vo.getPw());
		}
	%>
 --%>
 
 	<!-- 조금 더 정확하게 찾아오고 싶다면  
 		 page, session, request, application + Scope
 		 
 		 받는 쪽에서 scope를 지정하지 않으면 순서는 작은 것에서 큰 순으로 찾음 
 	 -->
 	 
 	 <h2>id : ${sessionScope.vo.id }</h2>
 	 <h2>pw: ${sessionScope.vo.pw }</h2>
 	
</body>
</html>