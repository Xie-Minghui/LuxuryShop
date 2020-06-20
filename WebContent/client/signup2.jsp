<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>创建新客户帐户</title>
		<link href="${pageContext.request.contextPath}/client/css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<script src="${pageContext.request.contextPath}/client/js/jquery.min.js"></script>
		<!----start-alert-scroller---->
		<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/jquery.easy-ticker.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			$('#demo').hide();
			$('.vticker').easyTicker();
		});
		</script>
		<!----start-alert-scroller---->
		<!-- start menu -->
		<link href="${pageContext.request.contextPath}/client/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/megamenu.js"></script>
		<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
		<script src="${pageContext.request.contextPath}/client/js/menu_jquery.js"></script>
		<!-- //End menu -->
		<!---move-top-top---->
		<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/move-top.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
		<!---//move-top-top---->
	</head>
	<body>
		<!---start-wrap---->

		<!--- start-content---->
		<div class="content login-box">
			<div class="login-main">
				<div class="wrap">
					<h1>注册</h1>
					<div class="register-grids">
						<form> 
								<div class="register-top-grid">
										<h3>登录信息</h3>
										<div>
											<span>电子邮箱<label>*</label></span>
											<input type="text">
										</div>
										<div>
											<span>密码<label>*</label></span>
											<input type="text">
										</div>
										<div>
											<span>验证码<label>*</label></span>
											<input type="text">
										</div>
										<div class="clear"> </div>
								</div>
								<div class="clear"> </div>
								<div class="register-bottom-grid">
										<h3>用户信息</h3>
										<div>
											<span>姓名<label>*</label></span>
											<input type="text"> 
										</div>
										<div>
											<span>生日<label>*</label></span>
											<input id="meeting" type="date" name="BDAY" value="2000-01-01"/>
										</div>
										<div>
											<span>称谓<label>*</label></span>
											<select>
												<option value="" disabled="" selected="selected">- 请选择 -</option>
												<option value="先生">先生</option>
												<option value="女士">女士</option>
											</select>
										</div>
										<div>
											<span>电话<label>*</label></span>
											<input type="text"> 
										</div>
								</div>
								<div class="clear"> </div>
								<div class="register-bottom-grid">
										<h3>配送信息</h3>
										<div>
											<span>省份<label>*</label></span>
											<input type="text"> 
										</div>
										<div>
											<span>城市<label>*</label></span>
											<input type="text"> 
										</div>
										<div>
											<span>区县<label>*</label></span>
											<input type="text"> 
										</div>
										<div>
											<span>详细地址<label>*</label></span>
											<input type="text"> 
										</div>
								</div>
								<div class="clear"> </div>
								<input type="submit" value="注册" />
						</form>
					</div>
				</div>
			</div>
		</div>

		<!--- //End-content---->
		<!---footer---->
		
		
		<!---//End-wrap---->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

