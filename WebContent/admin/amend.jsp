<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
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
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="fa fa-caret-down"></a>
											<a href="#" class="fa fa-times"></a>
										</div>
						
										<h2 class="panel-title">商品</h2>
									</header>
									<div class="panel-body">
										<form class="form-horizontal form-bordered" method="get">
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputDefault">Default</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="inputDefault">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputDisabled">Disabled</label>
												<div class="col-md-6">
													<input class="form-control" id="inputDisabled" type="text" placeholder="Disabled input here..." disabled="">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputReadOnly">Read-Only Input</label>
												<div class="col-md-6">
													<input type="text" value="Read-Only Input" id="inputReadOnly" class="form-control" readonly="readonly">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputHelpText">Help text</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="inputHelpText">
													<span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputRounded">Rounded Input</label>
												<div class="col-md-6">
													<input type="text" class="form-control input-rounded" id="inputRounded">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputFocus">Input focus</label>
												<div class="col-md-6">
													<input class="form-control" id="inputFocus" type="text" value="This is focused...">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputPlaceholder">Placeholder</label>
												<div class="col-md-6">
													<input type="text" class="form-control" placeholder="placeholder" id="inputPlaceholder">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputPassword">Password</label>
												<div class="col-md-6">
													<input type="password" class="form-control" placeholder="" id="inputPassword">
												</div>
											</div>
						
											<div class="form-group">
												<label class=" col-md-3 control-label">Static control</label>
												<div class="col-lg-6">
													<p class="form-control-static">email@example.com</p>
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label">Left Icon</label>
												<div class="col-md-6">
													<div class="input-group input-group-icon">
														<span class="input-group-addon">
															<span class="icon"><i class="fa fa-user"></i></span>
														</span>
														<input type="text" class="form-control" placeholder="Left icon">
													</div>
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label">Right Icon</label>
												<div class="col-md-6">
													<div class="input-group input-group-icon">
														<input type="text" class="form-control" placeholder="Right icon">
														<span class="input-group-addon">
															<span class="icon"><i class="fa fa-user"></i></span>
														</span>
													</div>
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label">Search</label>
												<div class="col-md-6">
													<div class="input-group input-search">
														<input type="text" class="form-control" name="q" id="q" placeholder="Search...">
														<span class="input-group-btn">
															<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
														</span>
													</div>
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label">File Upload</label>
												<div class="col-md-6">
													<div class="fileupload fileupload-new" data-provides="fileupload">
														<div class="input-append">
															<div class="uneditable-input">
																<i class="fa fa-file fileupload-exists"></i>
																<span class="fileupload-preview"></span>
															</div>
															<span class="btn btn-default btn-file">
																<span class="fileupload-exists">Change</span>
																<span class="fileupload-new">Select file</span>
																<input type="file" />
															</span>
															<a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
														</div>
													</div>
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label">Vertical Group</label>
												<div class="col-md-6">
													<section class="form-group-vertical">
														<input class="form-control" type="text" placeholder="Username">
														<input class="form-control" type="text" placeholder="Email">
														<input class="form-control last" type="password" placeholder="Password">
													</section>
												</div>
											</div>
						
											<div class="form-group">
												<label class="control-label col-md-3">Vertical Group w/ icon</label>
												<div class="col-md-6">
													<section class="form-group-vertical">
														<div class="input-group input-group-icon">
															<span class="input-group-addon">
																<span class="icon"><i class="fa fa-user"></i></span>
															</span>
															<input class="form-control" type="text" placeholder="Username">
														</div>
														<div class="input-group input-group-icon">
															<span class="input-group-addon">
																<span class="icon"><i class="fa fa-key"></i></span>
															</span>
															<input class="form-control" type="text" placeholder="Password">
														</div>
													</section>
												</div>
											</div>
						
											<div class="form-group has-success">
												<label class="col-md-3 control-label" for="inputSuccess">Input with success</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="inputSuccess">
												</div>
											</div>
											<div class="form-group has-warning">
												<label class="col-md-3 control-label" for="inputWarning">Input with warning</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="inputWarning">
												</div>
											</div>
											<div class="form-group has-error">
												<label class="col-md-3 control-label" for="inputError">Input with error</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="inputError">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputTooltip">Input with Tooltip</label>
												<div class="col-md-6">
													<input type="text" placeholder="Hover me" title="" data-toggle="tooltip" data-trigger="hover" class="form-control" data-original-title="Place your tooltip info here" id="inputTooltip">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputPopover">Input with Popover</label>
												<div class="col-md-6">
													<input type="text" placeholder="Click Here" class="form-control" data-toggle="popover" data-placement="top" data-original-title="The Title" data-content="Content goes here..." data-trigger="click" id="inputPopover">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label">Column sizing</label>
												<div class="col-sm-8">
													<div class="row">
														<div class="col-sm-2">
															<input type="text" class="form-control" placeholder=".col-sm-2">
														</div>
														<div class="visible-xs mb-md"></div>
														<div class="col-sm-3">
															<input type="text" class="form-control" placeholder=".col-sm-3">
														</div>
														<div class="visible-xs mb-md"></div>
														<div class="col-sm-4">
															<input type="text" class="form-control" placeholder=".col-sm-4">
														</div>
													</div>
						
												</div>
											</div>
										</form>
									</div>
								</section>
						
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="fa fa-caret-down"></a>
											<a href="#" class="fa fa-times"></a>
										</div>
						
										<h2 class="panel-title">Controls sizing</h2>
									</header>
									<div class="panel-body">
										<form class="form-horizontal form-bordered" method="get">
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Input sizing</label>
												<div class="col-md-6">
													<input class="form-control input-lg mb-md" type="text" placeholder=".input-lg">
													<input class="form-control mb-md" type="text" placeholder="Default input">
													<input class="form-control input-sm mb-md" type="text" placeholder=".input-sm">
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Select sizing</label>
												<div class="col-md-6">
													<select class="form-control input-lg mb-md">
														<option>Option 1</option>
														<option>Option 2</option>
														<option>Option 3</option>
													</select>
													<select class="form-control mb-md">
														<option>Option 1</option>
														<option>Option 2</option>
														<option>Option 3</option>
													</select>
													<select class="form-control input-sm mb-md">
														<option>Option 1</option>
														<option>Option 2</option>
														<option>Option 3</option>
													</select>
												</div>
											</div>
										</form>
									</div>
								</section>
								<section class="panel">
									<div class="panel-body">
										<form class="form-horizontal form-bordered" method="get">
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Checkboxes and radios</label>
												<div class="col-md-6">
													<div class="checkbox">
														<label>
															<input type="checkbox" value="">
															Option one is this and that—be sure to include why it's great
														</label>
													</div>
						
													<div class="checkbox">
														<label>
															<input type="checkbox" value="">
															Option one is this and that—be sure to include why it's great option one
														</label>
													</div>
						
													<div class="radio">
														<label>
															<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
															Option one is this and that—be sure to include why it's great
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
															Option two can be something else and selecting it will deselect option one
														</label>
													</div>
						
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Inline checkboxes</label>
												<div class="col-md-6">
													<label class="checkbox-inline">
														<input type="checkbox" id="inlineCheckbox1" value="option1"> 1
													</label>
													<label class="checkbox-inline">
														<input type="checkbox" id="inlineCheckbox2" value="option2"> 2
													</label>
													<label class="checkbox-inline">
														<input type="checkbox" id="inlineCheckbox3" value="option3"> 3
													</label>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="inputSuccess">Selects</label>
												<div class="col-md-6">
													<select class="form-control mb-md">
														<option>1</option>
														<option>2</option>
														<option>3</option>
														<option>4</option>
														<option>5</option>
													</select>
						
													<select multiple="" class="form-control">
														<option>1</option>
														<option>2</option>
														<option>3</option>
														<option>4</option>
														<option>5</option>
													</select>
												</div>
											</div>
						
										</form>
									</div>
								</section>
						
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="fa fa-caret-down"></a>
											<a href="#" class="fa fa-times"></a>
										</div>
						
										<h2 class="panel-title">Input Groups</h2>
									</header>
									<div class="panel-body">
										<form class="form-horizontal form-bordered" method="get">
											<div class="form-group">
												<label class="col-md-3 control-label">Basic examples</label>
												<div class="col-md-6">
													<div class="input-group mb-md">
														<span class="input-group-addon btn-success">@</span>
														<input type="text" class="form-control" placeholder="Username">
													</div>
						
													<div class="input-group mb-md">
														<input type="text" class="form-control">
														<span class="input-group-addon btn-warning">.00</span>
													</div>
						
													<div class="input-group mb-md">
														<span class="input-group-addon">$</span>
														<input type="text" class="form-control">
														<span class="input-group-addon ">.00</span>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label">Sizing</label>
												<div class="col-md-6">
													<div class="input-group input-group-lg mb-md">
														<span class="input-group-addon btn-danger">@</span>
														<input type="text" class="form-control input-lg" placeholder="Username">
													</div>
						
													<div class="input-group mb-md">
														<span class="input-group-addon">@</span>
														<input type="text" class="form-control" placeholder="Username">
													</div>
						
													<div class="input-group input-group-sm mb-md">
														<span class="input-group-addon">@</span>
														<input type="text" class="form-control" placeholder="Username">
													</div>
						
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label">Iconic</label>
												<div class="col-md-6">
													<div class="input-group mb-md">
														<span class="input-group-addon">
															<i class="fa fa-user"></i>
														</span>
														<input type="text" class="form-control" placeholder="Username">
													</div>
													<div class="input-group mb-md">
														<span class="input-group-addon">
															<i class="fa fa-envelope"></i>
														</span>
														<input type="text" class="form-control" placeholder="Email">
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label">Checkbox and radio</label>
												<div class="col-md-6">
													<div class="input-group mb-md">
														<span class="input-group-addon">
															<input type="checkbox">
														</span>
														<input type="text" class="form-control">
													</div>
						
													<div class="input-group mb-md">
														<span class="input-group-addon">
															<input type="radio">
														</span>
														<input type="text" class="form-control">
													</div>
						
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label">Button addons</label>
												<div class="col-md-6">
													<div class="input-group mb-md">
														<span class="input-group-btn">
															<button class="btn btn-danger" type="button">Go!</button>
														</span>
														<input type="text" class="form-control">
													</div>
						
													<div class="input-group mb-md">
														<input type="text" class="form-control">
														<span class="input-group-btn">
															<button class="btn btn-success" type="button">Go!</button>
														</span>
													</div>
												</div>
											</div>
						
											<div class="form-group">
												<label class="col-md-3 control-label">Segmented buttons</label>
												<div class="col-md-6">
													<div class="input-group mb-md">
														<div class="input-group-btn">
															<button tabindex="-1" class="btn btn-primary" type="button">Action</button>
															<button tabindex="-1" data-toggle="dropdown" class="btn btn-primary dropdown-toggle" type="button">
																<span class="caret"></span>
															</button>
															<ul role="menu" class="dropdown-menu">
																<li><a href="#">Action</a></li>
																<li><a href="#">Another action</a></li>
																<li><a href="#">Something else here</a></li>
																<li class="divider"></li>
																<li><a href="#">Separated link</a></li>
															</ul>
														</div>
														<input type="text" class="form-control">
													</div>
						
													<div class="input-group mb-md">
														<input type="text" class="form-control">
														<div class="input-group-btn">
															<button tabindex="-1" class="btn btn-primary" type="button">Action</button>
															<button tabindex="-1" data-toggle="dropdown" class="btn btn-primary dropdown-toggle" type="button">
																<span class="caret"></span>
															</button>
															<ul role="menu" class="dropdown-menu pull-right">
																<li><a href="#">Action</a></li>
																<li><a href="#">Another action</a></li>
																<li><a href="#">Something else here</a></li>
																<li class="divider"></li>
																<li><a href="#">Separated link</a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
						
										</form>
									</div>
								</section>
						
							</div>
						</div>
						
						<div class="row">
							<div class="col-lg-12">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="fa fa-caret-down"></a>
											<a href="#" class="fa fa-times"></a>
										</div>
						
										<h2 class="panel-title">Custom Checkbox &amp; Radio</h2>
									</header>
									<div class="panel-body">
										<div class="row">
											<div class="col-md-6">
												<form class="form-horizontal form-bordered" method="get">
													<div class="form-group">
														<label class="col-sm-4 control-label">Checkboxes</label>
						
														<div class="col-sm-8">
															<div class="checkbox-custom checkbox-default">
																<input type="checkbox" checked="" id="checkboxExample1">
																<label for="checkboxExample1">Checkbox Default</label>
															</div>
						
															<div class="checkbox-custom checkbox-primary">
																<input type="checkbox" checked="" id="checkboxExample2">
																<label for="checkboxExample2">Checkbox Primary</label>
															</div>
						
															<div class="checkbox-custom checkbox-success">
																<input type="checkbox" checked="" id="checkboxExample3">
																<label for="checkboxExample3">Checkbox Success</label>
															</div>
						
															<div class="checkbox-custom checkbox-warning">
																<input type="checkbox" checked="" id="checkboxExample4">
																<label for="checkboxExample4">Checkbox Warning</label>
															</div>
						
															<div class="checkbox-custom checkbox-danger">
																<input type="checkbox" checked="" id="checkboxExample5">
																<label for="checkboxExample5">Checkbox Danger</label>
															</div>
						
															<div class="checkbox-custom">
																<input type="checkbox" disabled="">
																<label>Checkbox Disabled</label>
															</div>
						
															<div class="checkbox-custom">
																<input type="checkbox" disabled="" checked="">
																<label>Checked &amp; Disabled</label>
															</div>
						
														</div>
													</div>
												</form>
											</div>
											<div class="col-md-6">
												<form class="form-horizontal form-bordered" method="get">
													<div class="form-group">
														<label class="col-sm-4 control-label">Radios</label>
						
														<div class="col-sm-8">
															<div class="radio-custom">
																<input type="radio" id="radioExample1" name="radioExample">
																<label for="radioExample1">Radio Default</label>
															</div>
						
															<div class="radio-custom radio-primary">
																<input type="radio" id="radioExample2" name="radioExample">
																<label for="radioExample2">Radio Primary</label>
															</div>
						
															<div class="radio-custom radio-success">
																<input type="radio" id="radioExample3" name="radioExample">
																<label for="radioExample3">Radio Success</label>
															</div>
						
															<div class="radio-custom radio-warning">
																<input type="radio" id="radioExample4" name="radioExample">
																<label for="radioExample4">Radio Warning</label>
															</div>
						
															<div class="radio-custom radio-danger">
																<input type="radio" id="radioExample5" name="radioExample">
																<label for="radioExample5">Radio Danger</label>
															</div>
						
															<div class="radio-custom">
																<input type="radio" disabled="">
																<label>Radio Disabled</label>
															</div>
						
															<div class="radio-custom">
																<input type="radio" disabled="" checked="">
																<label>Checked &amp; Disabled</label>
															</div>
						
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</section>
							</div>
						</div>
						
						<div class="row">
							<div class="col-lg-12">
								<section class="panel">
									<header class="panel-heading">
										<div class="panel-actions">
											<a href="#" class="fa fa-caret-down"></a>
											<a href="#" class="fa fa-times"></a>
										</div>
						
										<h2 class="panel-title">Textarea</h2>
									</header>
									<div class="panel-body">
										<form class="form-horizontal form-bordered" method="get">
											<div class="form-group">
												<label class="col-md-3 control-label" for="textareaDefault">Textarea</label>
												<div class="col-md-6">
													<textarea class="form-control" rows="3" id="textareaDefault"></textarea>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-3 control-label" for="textareaAutosize">Textarea autosize</label>
												<div class="col-md-6">
													<textarea class="form-control" rows="3" id="textareaAutosize" data-plugin-textarea-autosize></textarea>
												</div>
											</div>
										</form>
									</div>
								</section>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-12">
						
								<div data-collapsed="0" class="panel">
						
									<div class="panel-heading">
										<div class="panel-title">
											<div class="panel-actions">
												<a href="#" class="fa fa-caret-down"></a>
												<a href="#" class="fa fa-times"></a>
											</div>
						
											<h2 class="panel-title">Input Grid</h2>
										</div>
									</div>
						
									<div class="panel-body">
						
										<div class="row">
						
											<div class="col-md-12 form-group">
												<input type="text" placeholder=".col-md-12" class="form-control">
											</div>
						
											<div class="col-md-6 form-group">
												<input type="text" placeholder=".col-md-6" class="form-control">
											</div>
						
											<div class="col-md-6 form-group">
												<input type="text" placeholder=".col-md-6" class="form-control">
											</div>
						
						
											<div class="col-md-4 form-group">
												<input type="text" placeholder=".col-md-4" class="form-control">
											</div>
						
											<div class="col-md-4 form-group">
												<input type="text" placeholder=".col-md-4" class="form-control">
											</div>
						
											<div class="col-md-4 form-group">
												<input type="text" placeholder=".col-md-4" class="form-control">
											</div>
						
						
											<div class="col-md-3 form-group">
												<input type="text" placeholder=".col-md-3" class="form-control">
											</div>
						
											<div class="col-md-3 form-group">
												<input type="text" placeholder=".col-md-3" class="form-control">
											</div>
						
											<div class="col-md-3 form-group">
												<input type="text" placeholder=".col-md-3" class="form-control">
											</div>
						
											<div class="col-md-3 form-group">
												<input type="text" placeholder=".col-md-3" class="form-control">
											</div>
						
						
											<div class="col-md-2 form-group">
												<input type="text" placeholder=".col-md-2" class="form-control">
											</div>
						
											<div class="col-md-2 form-group">
												<input type="text" placeholder=".col-md-2" class="form-control">
											</div>
						
											<div class="col-md-2 form-group">
												<input type="text" placeholder=".col-md-2" class="form-control">
											</div>
						
											<div class="col-md-2 form-group">
												<input type="text" placeholder=".col-md-2" class="form-control">
											</div>
						
											<div class="col-md-2 form-group">
												<input type="text" placeholder=".col-md-2" class="form-control">
											</div>
						
											<div class="col-md-2 form-group">
												<input type="text" placeholder=".col-md-2" class="form-control">
											</div>
						
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
						
											<div class="col-md-1 form-group">
												<input type="text" placeholder=".col-md-1" class="form-control">
											</div>
										</div>
						
									</div>
						
								</div>
						
							</div>
						</div>
					<!-- end: page -->
				</section>
			</div>

			<aside id="sidebar-right" class="sidebar-right">
				<div class="nano">
					<div class="nano-content">
						<a href="#" class="mobile-close visible-xs">
							Collapse <i class="fa fa-chevron-right"></i>
						</a>
			
						<div class="sidebar-right-wrapper">
			
							<div class="sidebar-widget widget-calendar">
								<h6>Upcoming Tasks</h6>
								<div data-plugin-datepicker data-plugin-skin="dark" ></div>
			
								<ul>
									<li>
										<time datetime="2014-04-19T00:00+00:00">04/19/2014</time>
										<span>Company Meeting</span>
									</li>
								</ul>
							</div>
			
							<div class="sidebar-widget widget-friends">
								<h6>Friends</h6>
								<ul>
									<li class="status-online">
										<figure class="profile-picture">
											<img src="${pageContext.request.contextPath}/admin/index/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-online">
										<figure class="profile-picture">
											<img src="${pageContext.request.contextPath}/admin/index/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="${pageContext.request.contextPath}/admin/index/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
									<li class="status-offline">
										<figure class="profile-picture">
											<img src="${pageContext.request.contextPath}/admin/index/images/!sample-user.jpg" alt="Joseph Doe" class="img-circle">
										</figure>
										<div class="profile-info">
											<span class="name">Joseph Doe Junior</span>
											<span class="title">Hey, how are you?</span>
										</div>
									</li>
								</ul>
							</div>
			
						</div>
					</div>
				</div>
			</aside>
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