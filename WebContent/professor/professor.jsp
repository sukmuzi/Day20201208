<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url("../images/back.jpg");
}

ul {
	list-style-type: none;
}

.kh01 {
	padding-left: 130px;
	width: 100px;
	height: 100px;
}

#professorRegister {
	color: white;
	border: 1px solid white;
	border-radius: 20px;
	width: 400px;
}
</style>
<meta charset="UTF-8">
<title>교수등록</title>
</head>
<body>
	<div id="professorRegister">
		<form action="professorRegister.jsp" method="get">
			<h1 style="text-align: center;">교수등록</h1>
			<ul>
				<li><label for="나이">나이</label> <input type="number" name="age">
				</li>
				<li><label for="이름">이름</label> <input type="text" name="name"
					size="20"></li>
				<li><label for="과목">과목</label> <input type="text" name="subject"
					size="20"></li>
				<li><input type="image" src="../images/submit.png" class="kh01"></li>
			</ul>
		</form>
	</div>
</body>
</html>