<%@page import="dao.EmpDAO"%>
<%@page import="vo.EmpVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
	<table>
		<tr>
			<th>empno</th>
			<th>ename</th>
			<th>deptno</th>
		</tr>
		<%
			EmpDAO dao = new EmpDAO();
			
			List<EmpVO> lists = dao.selectAll();
			for(EmpVO vo : lists) {
		%>
		<tr>
			<td><a href="listOne.jsp?empno=<%=vo.getEmpno() %>"><%=vo.getEmpno() %></a></td>
			<td><%=vo.getEname() %></td>
			<td><%=vo.getDeptno() %></td>
		</tr>
		
		<%		
			}
		%>
	</table>
</body>
</html>