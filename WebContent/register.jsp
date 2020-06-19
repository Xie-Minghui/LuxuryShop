<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/RegisterController" method="post" >
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
        		<input type="radio" name="GENDER" value="M">男
        		<input type="radio" name="GENDER" value="F">女
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
			<h1>注册验证</h1>
			<table width="60%" border="0" cellspacing="2" class="upline">
				<tr>
					<td style="text-align: right; width: 20%">输入验证码：</td>
					<td style="width: 50%">
					<input type="text" class="textinput" />
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td style="text-align: right; width: 20%;">&nbsp;</td>
					<td rowspan="2" style="width: 50%">
					<%System.out.println("尼玛"); %>
					<img src="${pageContext.request.contextPath}/imageCode" width="120"
						height="30" class="textinput" style="height: 30px;" id="imgCode" />&nbsp;&nbsp;
						<a href="javascript:void(0);" onclick="changeImage()">看不清换一张</a>
						<%System.out.println("哈哈"); %>
					</td>
				</tr>
			</table>
			<script type="text/javascript">
				function changeImage(){
					//改变验证码图片中的文字
					document.getElementById("imgCode").src = "${pageContext.request.contextPath}/imageCode?time=" + new Date().getTime();
				}
			</script>
			
			<table width="60%" border="0" cellspacing="0">
				<tr>
					<td style="padding-top: 20px; text-align: center">
						<input type="image" src="client/images/signup.gif" name="submit" border="0" width="140" height="35"/>
					</td>
				</tr>
			</table>
			
			<input type="submit" value="注册">
		</form>
</body>
</html>