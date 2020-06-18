<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
</head>
<body>
		<form action="${pageContext.request.contextPath}/RegisterController" method="post">
			邮箱:<br>
			<input type="text" name="email" value="">
			<br>
			密码:<br>
			<input type="text" name="password" value="">
			<br>
			昵称:<br>
			<input type="text" name="nickname" value="">
			<br>
			姓名:<br>
			<input type="text" name="name" value="">
			<br>
			电话:<br>
			<input type="text" name="phoneNumber" value="">
			<br>
			收货地址:<br>
			<input type="text" name="address" value="">
			<br>
			性别:<br>
        		<input type="radio" name="gender" value="boy">男
        		<input type="radio" name="gender" value="girl">女
			<br>
			<label for="meeting">生日：</label><input id="meeting" type="date" name="birthday" value="2014-01-13"/>
			<br><br>
			<input type="submit" value="注册">
		</form>
</body>
</html>