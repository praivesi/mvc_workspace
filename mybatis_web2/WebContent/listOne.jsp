<%@page import="vo.EmpVO"%>
<%@page import="dao.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>empno</th>
			<th>ename</th>
			<th>deptno</th>
		</tr>
		
		<%
			String no = request.getParameter("empno");
			int empno = Integer.parseInt(no);
			
			EmpDAO dao = new EmpDAO();
			EmpVO vo = dao.selectOne(empno);
		%>
		
		<tr>
			<td><%=vo.getEmpno() %></td>
			<td><%=vo.getEname() %></td>
			<td><%=vo.getDeptno() %></td>
		</tr>
	</table>
</body>
</html>