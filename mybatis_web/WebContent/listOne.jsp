<%@page import="vo.DeptVO"%>
<%@page import="dao.DeptDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listOne.jsp</title>
</head>
<body>
	<%
		String no = request.getParameter("deptno");
	
		int deptno = Integer.parseInt(no);
		
		DeptDAO dao = new DeptDAO();
		DeptVO vo = dao.selectOne(deptno);
	%>
	
	<table>
		<tr>
			<td><%=vo.getDeptno() %></td>
			<td><%=vo.getDname() %></td>
			<td><%=vo.getLoc() %></td>
		</tr>
	</table>
	
</body>
</html>