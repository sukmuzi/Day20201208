<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action="loginProcess.jsp" method="get">
		<fieldset>
			<legend>로그인</legend>
			<ul>
				<li><label for="아이디">아이디</label> <input type="text" name="id"
					autofocus="autofocus" required="required" placeholder="아이디 입력"></li>
				<li><label for="비밀번호">비밀번호</label> <input type="password"
					name="pwd" placeholder="비밀번호 입력"></li>
				<li><input type="submit" value="로그인"></li>
			</ul>
		</fieldset>
	</form>
</body>
</html>