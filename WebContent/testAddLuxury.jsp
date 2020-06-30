<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/addLuxuryController" enctype="multipart/form-data" method="post">
    		<table width="70%" border="0" cellspacing="2" class="upline">
			<tr>
				<td style="text-align: right; width: 20%"> 商品图片：</td>
				<td>
				<input type="file" name="file1" id="file1"/>
				</td>
				<td colspan="2"><span id="emailMsg"></span></td>
			</tr>
			
			<tr>
				<td style="text-align: right; width: 20%">管理员id：</td>
				<td>
				<input type="text" class="textinput"  id="aid" name="AID"/>
				</td>
				<td colspan="2"><span id="emailMsg"></span></td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">商品名称：</td>
				<td>
				<input type="text" class="textinput"  id="lname" name="LNAME"/>
				</td>
				<td colspan="2"><span id="passwordMsg"></span></td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">价格：</td>
				<td>
				<input type="text" class="textinput"  id="price" name="PRICE"/>
				</td>
				<td colspan="2"><span id="confirmMsg"></span></td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">库存：</td>
				<td>
				<input type="text" class="textinput" id = "restnum" name="RESTNUM" />
				</td>
				<td colspan="2"><span id="usernameMsg"></span></td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">类型：</td>
				<td>
				<input type="text" class="textinput" id = "type" name="TYPE" />
				<td colspan="2"><span id="phoneMsg"></span></td>
				</td>
			</tr>
			
			<tr>
				<td style="text-align: right; width: 20%">介绍：</td>
				<td>
				<input type="text" class="textinput" id = "type" name="INFOR"/>
				<td colspan="2"><span id="phoneMsg"></span></td>
				</td>
			</tr>
			
			<tr>
				<td style="text-align: right; width: 20%">尺寸：</td>
				<td>
				<input type="text" class="textinput" name="SIZE"/>
				</td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">重量：</td>
				<td>
					<input type="text" class="textinput" name="WEIGHT"/>
				</td>
			</tr>

			<tr>
				<td style="text-align: right; width: 20%">颜色：</td>
				<td>
				<input id="meeting" type="text" name="COLOR"/>
				</td>
			</tr>

		</table>
			
		<table width="60%" border="0" cellspacing="0">
			<input type="submit" name = "submit"  value="注册商品">
		</table>
</form>
</body>
</html>