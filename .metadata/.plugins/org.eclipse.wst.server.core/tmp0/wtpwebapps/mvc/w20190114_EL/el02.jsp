<%@page import="vo.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el02.jsp</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.println(id + "<br/>");
		out.println(pw + "<br/>");
	%>
	
	<%
		MemberBean vo = new MemberBean();
		vo.setId(id);
		vo.setPw(pw);
	%>
	
	<!-- jsp action tag(자바의 문법을 tag로 만들어 놓은 것) -->
	<%-- <jsp:useBean id="vo" class="vo.MemberBean"></jsp:useBean> --%>
	
	<h2><%=vo.getId() %></h2>
</body>
</html>