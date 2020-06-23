<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
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
	
		<!-- ************************* CSS Files ************************* -->
	
	    <!-- Vendor CSS -->
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/shop/css/vendor.css">
	
	    <!-- style css -->
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/shop/css/main.css">
	</head>
	<body>
		<!-- Header -->
		<jsp:include page = "head.jsp"></jsp:include>
		
		<!-- Breadcrumb area Start -->
        <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">登录</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Excellent</a></li>
                            <li class="current"><span>登录</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->
		
		<!--- start-content---->
		<div class="main-content-wrapper">
            <div class="page-content-inner ptb--80 ptb-md--60 pb-sm--55">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
		<div class="content login-box">
				<div class="wrap">
					<div class="login-left">
						<h3>注册Excellent账户</h3>
						<p>注册Excellent账号以便追踪您的订单，管理收货地址，获取更多个性化信息。</p>
						<a class="acount-btn" href="${pageContext.request.contextPath}/client/register.jsp">创建帐户</a>
					</div>
					<div class="login-right">
						<h3>已有帐户</h3>
						<p>如果您已拥有一个Excellent帐户，请登录。</p>
						<form action="${pageContext.request.contextPath}/LoginController" method="post">
							<div>
								<span>电子邮箱<label>*</label></span>
								<input type="text" name="EMAIL"> 
							</div>
							<div>
								<span>密码<label>*</label></span>
								<input type="password" name="PSWD">
							</div>
							<div>
								<span>验证码<label>*</label></span>
								<input type="text">
								<img src="${pageContext.request.contextPath}/imageCode" width="120" height="30" class="textinput" style="height: 30px;" id="imgCode" />&nbsp;&nbsp;
                                <a href="javascript:void(0);" onclick="changeImage()">看不清换一张</a>
							</div>
							<a class="forgot" href="#">忘记密码？</a>
							<input type="submit" value="登录" />
						</form>
					</div>
					<div class="clear"> </div>
				</div>
		</div>
				    	</div>
		        	</div>
                </div>
            </div>
        </div>
		<!---//End-wrap---->
		
		<!-- Footer -->
		<jsp:include page = "foot.jsp"></jsp:include>
		
		<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>

    
<!-- ************************* JS Files ************************* -->
<!-- jQuery JS -->
<script src="${pageContext.request.contextPath}/client/shop/js/vendor.js"></script>
<!-- Main JS -->
<script src="${pageContext.request.contextPath}/client/shop/js/main.js"></script>

</body>
</html>