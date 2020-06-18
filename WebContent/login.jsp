<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="${pageContext.request.contextPath}/login" method="post">
			邮箱:<br>
			<input type="text" name="firstname" value="">
			<br>
			密码:<br>
			<input type="text" name="lastname" value="">
			<br><br>
			<input type="submit" value="Submit">
		</form>
</body>
</html>