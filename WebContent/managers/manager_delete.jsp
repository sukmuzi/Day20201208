<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	background-image: url("../images/back.jpg");
	color: white;
}

a {
	color: white;
}
</style>
<meta charset="UTF-8">
<title>관리자 삭제</title>
</head>
<body>
	<h1>관리자 삭제</h1>

	<%
		String name = request.getParameter("name");
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://bbr123.cafe24.com:3306/bbr123", "bbr123",
				"alstjr95!");

		String sql = "delete from managersuk where name = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);

		int cnt = pstmt.executeUpdate();
	%>
	<%=cnt%>명 관리자가 삭제되었습니다.
	<br>
	<a href="../haksaInfo.jsp">학사관리</a>
	<a href="managerList.jsp">관리자전체출력</a>
	<%
		pstmt.close();
		conn.close();
	%>
</body>
</html>