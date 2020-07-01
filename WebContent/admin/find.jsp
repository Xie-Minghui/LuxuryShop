<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="p" uri="http://www.LuxutyShop.cn/tag" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype>
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
								<li><span>查找</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->
						<section class="panel">
							<header class="panel-heading">
								<h2 class="panel-title">商品处理</h2>
							</header>
							<div class="panel-body">
								<div class="row">
									<div class="col-sm-6">
										<div class="mb-md">
										    <a href="${pageContext.request.contextPath}/admin/publish.jsp" class="btn btn-primary">发布</a>
										</div>
									</div>
								</div>
								<table class="table table-bordered table-striped mb-none" id="datatable-editable">
									<thead>
										<tr>
											<th>商品ID</th>
											<th>商品名称</th>
											<th>加入时间</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${pList}" var="p">
											<tr class="gradeA">
												<td>${p.LID}</td>
												<td>${p.LNAME}</td>
												<td>${p.DATE}</td>
												<td class="actions">
													<a href="#" class="hidden on-editing save-row"><i class="fa fa-save"></i></a>
													<a href="#" class="hidden on-editing cancel-row"><i class="fa fa-times"></i></a>
													<a href="${pageContext.request.contextPath}/AdminFindProductById?id=${p.LID}"><i class="fa fa-pencil"></i></a>
													<a href="${pageContext.request.contextPath}/AdminDeleProductById?id=${p.LID}" class="on-default remove-row"><i class="fa fa-trash-o"></i></a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</section>
					<!-- end: page -->
				</section>
			</div>
			<jsp:include page = "calendar.jsp"></jsp:include>
		</section>

		<jsp:include page = "delete.jsp"></jsp:include>

		<!-- Vendor -->
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery/jquery.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Specific Page Vendor -->
		<script src="${pageContext.request.contextPath}/admin/index/vendor/select2/select2.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
				
		<!-- Theme Base, Components and Settings -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.init.js"></script>


		<!-- Examples -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/tables/examples.datatables.editable.js"></script>
	</body>
</html>