<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="${pageContext.request.contextPath}/LoginController" method="post">
			邮箱:<br>
			<input type="text" name="EMAIL" value="">
			<br>
			密码:<br>
			<input type="text" name="PSWD" value="">
			<br><br>
			<input type="submit" value="登录">
		</form>
</body>
</html>