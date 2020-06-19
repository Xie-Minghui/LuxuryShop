<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- Standard Favicon -->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/client/head/images//favicon.ico" />
	
	<!-- For iPhone 4 Retina display: -->
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/client/head/images//apple-touch-icon-114x114-precomposed.png">
	
	<!-- For iPad: -->
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/client/head/images//apple-touch-icon-72x72-precomposed.png">
	
	<!-- For iPhone: -->
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/client/head/images//apple-touch-icon-57x57-precomposed.png">	
	
	<!-- Library - Google Font Familys -->
	<link href="https://fonts.googleapis.com/css?family=Arizonia|Crimson+Text:400,400i,600,600i,700,700i|Lato:100,100i,300,300i,400,400i,700,700i,900,900i|Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/head/revolution/css/settings.css">
 
	<!-- RS5.0 Layers and Navigation Styles -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/head/revolution/css/layers.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/head/revolution/css/navigation.css">
	
	<!-- Library - Bootstrap v3.3.5 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/head/libraries/lib.css">
	
	<!-- Custom - Common CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/head/css/plugins.css">			
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/head/css/navigation-menu.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/head/css/shortcode.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/head/style.css">

<header class="header-section container-fluid no-padding">	
	<!-- Menu Block -->
	<div class="container-fluid no-padding menu-block">
		<!-- Container -->
		<div class="container">
			<!-- nav -->
			<nav class="navbar navbar-default ow-navigation">
				<div class="navbar-header">
					<button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="index.html" class="navbar-brand">Max <span>shop</span></a>
				</div>
				<!-- Menu Icon -->
				<div class="menu-icon">
					<div class="search">	
						<a href="#" id="search" title="Search"><i class="icon icon-Search"></i></a>
					</div>
					<ul class="cart">
						<li>
							<a aria-expanded="true" aria-haspopup="true" data-toggle="dropdown" id="cart" class="btn dropdown-toggle" title="Add To Cart" href="#"><i class="icon icon-ShoppingCart"></i></a>
							<ul class="dropdown-menu no-padding">
								<li class="mini_cart_item">
									<a title="Remove this item" class="remove" href="#">&#215;</a>
									<a href="#" class="shop-thumbnail">
										<img alt="poster_2_up" class="attachment-shop_thumbnail" src="images/product-wishlist-1.jpg">Flying Ninja
									</a>
									<span class="quantity">2 &#215; <span class="amount">Rs.12.00</span></span>
								</li>
								<li class="mini_cart_item">
									<a title="Remove this item" class="remove" href="#">&#215;</a>
									<a href="#" class="shop-thumbnail">
										<img alt="poster_2_up" class="attachment-shop_thumbnail" src="images/product-wishlist-2.jpg">Flying Ninja
									</a>
									<span class="quantity">2 &#215; <span class="amount">Rs.12.00</span></span>
								</li>
								<li class="button">
									<a href="#" title="View Cart">View Cart</a>
									<a href="#" title="Check Out">Check out</a>
								</li>
							</ul>
						</li>
						<li><a href="#" title="Like"><i class="icon icon-Heart"></i></a></li>
						<li><a href="#" title="User"><i class="icon icon-User"></i></a></li>
					</ul>
				</div><!-- Menu Icon /- -->
				<div class="navbar-collapse collapse navbar-right" id="navbar">
					<ul class="nav navbar-nav">
						<li><a href="index.html">Home</a></li>
						<li><a href="cart.html">Cart</a></li>
						<li><a href="checkout.html">Checkout</a></li>
						<li><a href="about.html">About Us</a></li>
						<li><a href="contact-us.html">Contact Us</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</nav><!-- nav /- -->
			<!-- Search Box -->
			<div class="search-box">
				<span><i class="icon_close"></i></span>
				<form><input type="text" class="form-control" placeholder="Enter a keyword and press enter..." /></form>
			</div><!-- Search Box /- -->
		</div><!-- Container /- -->
	</div><!-- Menu Block /- -->
</header><!-- Header /- -->
		
	
<!-- JQuery v1.12.4 -->
<script src="${pageContext.request.contextPath}/client/head/js/jquery.min.js"></script>

<!-- Library - Js -->
<script src="${pageContext.request.contextPath}/client/head/libraries/lib.js"></script>

<script src="${pageContext.request.contextPath}/client/head/libraries/jquery.countdown.min.js"></script>

<!-- RS5.0 Core JS Files -->
<script type="text/javascript" src="${pageContext.request.contextPath}/client/head/revolution/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/client/head/revolution/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/client/head/revolution/js/extensions/revolution.extension.video.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/client/head/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/client/head/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/client/head/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/client/head/revolution/js/extensions/revolution.extension.actions.min.js"></script>

<!-- Library - Theme JS -->
<script src="${pageContext.request.contextPath}/client/head/js/functions.js"></script>