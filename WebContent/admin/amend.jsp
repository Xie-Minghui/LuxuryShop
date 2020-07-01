<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="http://www.LuxutyShop.cn/tag" %>
<!doctype>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Basic Forms | Okler Themes | Porto-Admin</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/bootstrap-datepicker/css/datepicker3.css" />

		<!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/bootstrap-fileupload/bootstrap-fileupload.min.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="${pageContext.request.contextPath}/admin/index/vendor/modernizr/modernizr.js"></script>

	</head>
	<body>
		<p:admin/>
		<section class="body">

			<!-- start: header -->
			<jsp:include page = "header.jsp"></jsp:include>
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<jsp:include page = "sidebar.jsp"></jsp:include>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>商品</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.jsp">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>商品</span></li>
								<li><span>修改</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->
						<div class="row">
							<div class="col-lg-12">
								<section class="panel">
									<header class="panel-heading"><h2 class="panel-title">商品</h2></header>
									<div class="panel-body">
										<form class="form-horizontal form-bordered" action="${pageContext.request.contextPath}/AdminChangeLuxuryInfo?id=${p.LID}" method="post">
										    <div class="form-group">
												<label class="col-md-3 control-label" for="inputDisabled">商品ID（自动获取，不可修改）</label>
												<div class="col-md-6">
													<input name="LID" class="form-control" id="inputDisabled" type="text" value="${p.LID}" placeholder="${p.LID}" disabled="">
												</div>
											</div>
											
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputFocus">商品名称</label>
												<div class="col-md-6">
													<input name="LNAME" class="form-control" id="inputFocus" type="text" value="${p.LNAME}">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputFocus">商品单价</label>
												<div class="col-md-6">
													<input name="PRICE" class="form-control" id="inputFocus" type="text" value="${p.PRICE}">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputFocus">商品库存</label>
												<div class="col-md-6">
													<input name="RESTNUM" class="form-control" id="inputFocus" type="text" value="${p.RESTNUM}">
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">选择商品类型</label>
												<div class="col-md-6">
													<select name="TYPE" class="form-control input-lg mb-md">
														<option value="${p.TYPE}" selected hidden>${p.TYPE}</option> 
														<option value="皮具">皮具</option>
														<option value="首饰">首饰</option>
														<option>Option 33</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="textareaDefault">商品信息</label>
												<div class="col-md-6">
													<textarea name="INFOR" class="form-control" rows="3" id="textareaDefault">${p.INFOR}</textarea>
												</div>
											</div>													
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputDefault">最小尺寸</label>
												<div class="col-md-6">
												    <input name="SIZE" class="form-control" id="inputFocus" type="text" value="${p.SIZE}">
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputDefault">重量</label>
												<div class="col-md-6">
												    <input name="WEIGHT" class="form-control" id="inputFocus" type="text" value="${p.WEIGHT}">
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputDefault">颜色</label>
												<div class="col-md-6">
												    <input name="COLOR" class="form-control" id="inputFocus" type="text" value="${p.COLOR}">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="mb-md">
												    <input type="submit" class="btn btn-primary">修改</a>
												</div>
											</div>
										</form>
									</div>
								</section>								
							</div>
						</div>
					<!-- end: page -->
				</section>
			</div>
			<jsp:include page = "calendar.jsp"></jsp:include>
		</section>

		<!-- Vendor -->
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery/jquery.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery-autosize/jquery.autosize.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.init.js"></script>

	</body>
</html>