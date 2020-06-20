<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>客户登录</title>
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
			<!--- header ---->
			
			
		<!--- start-content---->
		<div class="content login-box">
			<div class="login-main">
				<div class="wrap">
					<h1>登录或创建帐户</h1>
					<div class="login-left">
						<h3>注册Excellent账户</h3>
						<p>注册Excellent账号以便追踪您的订单，管理收货地址，获取更多个性化信息。</p>
						<a class="acount-btn" href="register.html">创建帐户</a>
					</div>
					<div class="login-right">
						<h3>已有帐户</h3>
						<p>如果您已拥有一个Excellent帐户，请登录。</p>
						<form>
							<div>
								<span>电子邮箱<label>*</label></span>
								<input type="text"> 
							</div>
							<div>
								<span>密码<label>*</label></span>
								<input type="text"> 
							</div>
							<a class="forgot" href="#">忘记密码？</a>
							<input type="submit" value="登录" />
						</form>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
		</div>
		<!---//End-wrap---->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>