<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectDept.jsp</title>
<style type="text/css">
	table {
		width: 600px;
		margin: 0 auto;
	}
	
	table, tr, th, td {
		border: 1px solid black;
		border-collapse: collapse;
	}
	
</style>
</head>

<body>
	<table>
		<tr>
			<th>부서번호</th>
			<th>부서명</th>
			<th>부서위치</th>
		</tr>
	<%
		// DB 연결 순서
		// 1. db 연결 정보 설정
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/itbank";
		String user = "scott";
		String password = "tiger";
		
		// 2. driver loading
		Class.forName(driver);
		
		// 3. Connection 객체 생성
		Connection conn = DriverManager.getConnection(url, user, password);
		
		// 4. SQL 문장
		String sql = "SELECT * FROM DEPT";
		
		// 5. 문장 객체
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		// 6. 실행
		ResultSet rs = pstmt.executeQuery();
		
		// 7. 레코드별로 로직 처리
		while(rs.next()){
			int deptno = rs.getInt(1);
			String dname = rs.getString("dname");
			String loc = rs.getString(3);
	%>
		<tr>
			<td><%=deptno %></td>
			<td><%=dname %></td>
			<td><%=loc %></td>
		</tr>
	<%
		}		
		// 8. 자원반납
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	%>
	</table>
</body>
</html>























