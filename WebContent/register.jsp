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
			<input type="text" name="EMAIL" value="">
			<br>
			密码:<br>
			<input type="text" name="PSWD" value="">
			<br>
			昵称:<br>
			<input type="text" name="CNICK" value="">
			<br>
			姓名:<br>
			<input type="text" name="CNAME" value="">
			<br>
			电话:<br>
			<input type="text" name="PN" value="">
			<br>
			详细收货地址:<br>
			<input type="text" name="ADDR" value="">
			<br>
			性别:<br>
        		<input type="radio" name="GENDER" value="boy">男
        		<input type="radio" name="GENDER" value="girl">女
			<br>
			<label for="meeting">生日：</label><input id="meeting" type="date" name="BDAY" value="2014-01-13"/>
			<br>
			省份:<br>
			<input type="text" name="PROVINCE" value="">
			<br>
			城市:<br>
			<input type="text" name="CITY" value="">
			<br>
			区县:<br>
			<input type="text" name="DISTRICT" value="">
			<br><br>
			<input type="submit" value="注册">
		</form>
</body>
</html>