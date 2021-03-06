<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
}

.kh01 {
	width: 60px;
	height: 10;
	padding-left: 190px;
}

#managerUpdate {
	color: white;
	border: 1px solid white;
	border-radius: 20px;
	width: 400px;
}

h1 {
	font-size: 28px;
}

ul {
	list-style-type: none;
	padding: 0px;
}
</style>
<meta charset="UTF-8">
<title>관리자수정</title>
</head>
<body>
	<%
		String updateName = request.getParameter("name");
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://bbr123.cafe24.com:3306/bbr123", "bbr123",
				"alstjr95!");
		
		String sql = "select age, name, part from managersuk where name = ?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, updateName);

		ResultSet rs = pstmt.executeQuery();

		int age = 0;
		String name = null;
		String part = null;

		while (rs.next()) {
			age = rs.getInt("age");
			name = rs.getString("name");
			part = rs.getString("part");
		}
	%>
	<div id="managerUpdate">
		<h1 style="text-align: center;">최종 수정하기 전 내용입니다.</h1>
		<form action="manager_update.jsp" method="get">
			<input type="hidden" name="updateName" value="<%=updateName%>">
			<ul>
				<li><label for="나이변경">나이변경</label> <input type="number"
					name="age" value="<%=age%>"></li>
				<li><label for="이름변경">이름변경</label> <input type="text"
					name="name" value="<%=name%>"></li>
				<li><label for="부서변경">부서변경</label> <input type="text"
					name="part" value="<%=part%>"></li>
				<li><input type="image" src="../images/update.png" class="kh01"></li>
			</ul>
		</form>
	</div>
</body>
</html>