<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/form.js"></script>
<title>注册</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/RegisterController" method="post" onsubmit="return checkForm();">
		<table width="70%" border="0" cellspacing="2" class="upline">
			<tr>
				<td style="text-align: right; width: 20%">邮箱：</td>
				<td>
				<input type="text" class="textinput"  id="email" name="EMAIL" onkeyup="checkEmail();"/>
				</td>
				<td colspan="2"><span id="emailMsg"></span></td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">密码：</td>
				<td>
				<input type="password" class="textinput"  id="password" name="PSWD" onkeyup="checkPassword();"/>
				</td>
				<td colspan="2"><span id="passwordMsg"></span></td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">确认密码：</td>
				<td>
				<input type="password" class="textinput"  id="repassword" name="rePSWD" onkeyup="checkConfirm();"/>
				</td>
				<td colspan="2"><span id="confirmMsg"></span></td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">姓名：</td>
				<td>
				<input type="text" class="textinput" id = "username" name="CNAME" onkeyup="checkUsername()"/>
				</td>
				<td colspan="2"><span id="usernameMsg"></span></td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">电话：</td>
				<td>
				<input type="text" class="textinput" name="PN"/>
				</td>
			</tr>
			
			<tr>
				<td style="text-align: right; width: 20%">详细收货地址：</td>
				<td>
				<input type="text" class="textinput" name="ADDR"/>
				</td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">性别：</td>
				<td>
					<input type="radio" name="GENDER" value="M">男
					<input type="radio" name="GENDER" value="F">女
				</td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">生日：</td>
				<td>
				<input id="meeting" type="date" name="BDAY" value="2014-01-13"/>
				</td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">省份：</td>
				<td>
				<input type="text" name="PROVINCE" value="">
				</td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">城市：</td>
				<td>
				<input type="text" name="CITY" value="">
				</td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">区县：</td>
				<td>
				<input type="text" name="DISTRICT" value="">
				</td>
			</tr>

		</table>

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
				<img src="${pageContext.request.contextPath}/imageCode" width="120"
					height="30" class="textinput" style="height: 30px;" id="imgCode" />&nbsp;&nbsp;
					<a href="javascript:void(0);" onclick="changeImage()">看不清换一张</a>
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
			<input type="submit" name = "submit"  value="注册">
		</table>

	</form>

</body>
</html>