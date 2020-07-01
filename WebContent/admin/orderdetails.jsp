<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Editable Tables | Okler Themes | Porto-Admin</title>
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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/select2/select2.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/jquery-datatables-bs3/assets/css/datatables.css" />

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
						<h2>订单详情</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.jsp">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>订单</span></li>
								<li><span>查看详情</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->

					<section class="panel">
						<div class="panel-body">
							<div class="invoice">
								<header class="clearfix">
									<div class="row">
										<div class="col-sm-6 mt-md">
											<h2 class="h2 mt-none mb-sm text-dark text-bold">订单编号</h2>
											<h4 class="h4 m-none text-dark text-bold">${admin_order.OID}</h4>
										</div>
										<div class="col-sm-6 text-right mt-md mb-md">
											<div class="ib mr-xlg">
												<h2>${state}</h2>
											</div>
											<div class="ib">
												<img src="${pageContext.request.contextPath}/admin/index/images/invoice-logo.png" alt="OKLER Themes" />
											</div>
										</div>
									</div>
								</header>
								<div class="bill-info">
									<div class="row">
										<div class="col-md-6">
											<div class="bill-to">
												<p class="h5 mb-xs text-dark text-semibold">收件人信息</p>
												<address>
												    收件人姓名：${admin_order.NAME}
												    <br/>
													收件人手机号: ${admin_order.PHONE}
												    <br/>
													收件省份：${admin_order.PROVINCE}
													<br/>
													收件城市：${admin_order.CITY}
													<br/>
													收件区县：${admin_order.DISTRICT}
													<br/>
													详细地址：${admin_order.ADDR}
													<br/>
													订单备注：${admin_order.REMARK}
												</address>
											</div>
										</div>
										<div class="col-md-6">
											<div class="bill-data text-right">
												<p class="mb-none">
													<span class="text-dark">下单日期:</span>
													<span class="value">${admin_order.DATE}</span>
												</p>
											</div>
										</div>
									</div>
								</div>
							
								<div class="table-responsive">
									<table class="table invoice-items">
										<thead>
											<tr class="h4 text-dark">
												<th id="cell-id"     class="text-semibold">商品ID</th>
												<th id="cell-item"   class="text-semibold">商品名称</th>
												<th id="cell-desc"   class="text-semibold">商品库存</th>
												<th id="cell-price"  class="text-center text-semibold">单价</th>
												<th id="cell-qty"    class="text-center text-semibold">数量</th>
												<th id="cell-total"  class="text-center text-semibold">总价</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${admin_order.orderItems}" var="entry" varStatus="vs">
												<tr>
													<td>${entry.LID}</td>
													<td class="text-semibold text-dark">${entry.luxury.LNAME}</td>
													<td>${entry.luxury.RESTNUM}</td>
													<td class="text-center">￥${entry.luxury.PRICE}</td>
													<td class="text-center">${entry.NUM}</td>
													<td class="text-center">￥${entry.luxury.PRICE*entry.NUM}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							
								<div class="invoice-summary">
									<div class="row">
										<div class="col-sm-4 col-sm-offset-8">
											<table class="table h5 text-dark">
												<tbody>
													<tr class="b-top-none">
														<td colspan="2">小计</td>
														<td class="text-left">￥${order.SUMPRICE}</td>
													</tr>
													<tr>
														<td colspan="2">邮费</td>
														<td class="text-left">￥0.00</td>
													</tr>
													<tr class="h4">
														<td colspan="2">总额</td>
														<td class="text-left">￥${order.SUMPRICE}</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>

							<div class="text-right mr-lg">
								<a href="${pageContext.request.contextPath}/AdminIndexController" class="btn btn-default">返回主页</a>
							</div>
						</div>
					</section>

					<!-- end: page -->
				</section>
			</div>
			<<jsp:include page = "calendar.jsp"></jsp:include>
		</section>

		<!-- Vendor -->
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery/jquery.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.init.js"></script>

	</body>
</html>