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
			First name:<br>
			<input type="text" name="firstname" value="Mickey">
			<br>
			Last name:<br>
			<input type="text" name="lastname" value="Mouse">
			<br><br>
			<input type="submit" value="Submit">
		</form>
</body>
</html>