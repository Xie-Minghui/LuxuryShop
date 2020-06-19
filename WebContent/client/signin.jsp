<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="zh">

    <head>
        <!-- meta data -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!--font-family-->
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext" rel="stylesheet">
        
        <!-- title of site -->
        <title>Sign in</title>

        <!-- For favicon png -->
		<link rel="shortcut icon" type="image/icon" href="${pageContext.request.contextPath}/client/logo/favicon.png"/>
       
        <!--font-awesome.min.css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/font-awesome.min.css">
		
		<!--animate.css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/animate.css">
		
        <!--bootstrap.min.css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/bootstrap.min.css">
		
		<!-- bootsnav -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/bootsnav.css" >	
        
        <!--style.css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/style.css">
        
        <!--responsive.css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/responsive.css">
        
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		
        <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
	
	<body>
		<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
		
		<!-- signin end -->
		<section class="signin popup-in">
			<div class="container">

				<div class="sign-content popup-in-content">
					<div class="popup-in-txt">
						<h2>sign in</h2>
						
						<div class="row">
							<div class="col-sm-12">
								<div class="signin-form">
									<form action="signin.html">
										<div class="form-group">
										    <label for="signin_form">Email</label>
										    <input type="email" class="form-control" id="signin_form" placeholder="enter your email here">
										</div><!--/.form-group -->
										<div class="form-group">
											<label for="signin_form">password</label>
										    <input type="password" class="form-control" id="signin_form" placeholder="Password">
										</div><!--/.form-group -->
									</form><!--/form -->
								</div><!--/.signin-form -->
							</div><!--/.col -->
						</div><!--/.row -->
						
						<div class="row">
							<div class="col-sm-12">
								<div class="signin-password">
									<div class="awesome-checkbox-list">
										<ul class="unstyled centered">

											<li>
											    <input class="styled-checkbox" id="styled-checkbox-2" type="checkbox" value="value2">
											    <label for="styled-checkbox-2">remember password</label>
											</li>

											<li>
											    <a href="#">Forgot email or password ?</a>
											</li>

										</ul>
									</div><!--/.awesome-checkbox-list -->
								</div><!--/.signin-password -->
							</div><!--/.col -->
						</div><!--/.row -->

						<div class="row">
							<div class="col-sm-12">
								<div class="signin-footer">
									<button type="button" class="btn signin_btn">
									sign in
									</button>
									<p>
										Don’t have an Account ?
										<a href="${pageContext.request.contextPath}/client/signup.jsp">register</a>
									</p>
								</div><!--/.signin-footer -->
							</div><!--/.col-->
						</div><!--/.row -->
					</div><!-- .popup-in-txt -->
				</div><!--/.sign-content -->
			</div><!--/.container -->

		</section><!--/.signin -->
		
		<!-- signin end -->

		<!--footer copyright start -->
		<footer class="footer-copyright">
			<div id="scroll-Top">
				<i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
			</div><!--/.scroll-Top-->

		</footer><!--/.hm-footer-copyright-->
		<!--footer copyright  end -->


		 <!-- Include all js compiled plugins (below), or include individual files as needed -->

		<script src="${pageContext.request.contextPath}/client/js/jquery.js"></script>
        
        <!--modernizr.min.js-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
		
		<!--bootstrap.min.js-->
        <script src="${pageContext.request.contextPath}/client/js/bootstrap.min.js"></script>
		
		<!-- bootsnav js -->
		<script src="${pageContext.request.contextPath}/client/js/bootsnav.js"></script>
		
		<!-- jquery.sticky.js -->
		<script src="${pageContext.request.contextPath}/client/js/jquery.sticky.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
		
        
        <!--Custom JS-->
        <script src="${pageContext.request.contextPath}/client/js/custom.js"></script>

    </body>
	
</html>