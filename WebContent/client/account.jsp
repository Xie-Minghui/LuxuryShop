<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicons -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/client/shop/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/client/shop/img/icon.png">

    <!-- ************************* CSS Files ************************* -->

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/shop/css/vendor.css">

    <!-- style css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/shop/css/main.css">
</head>

<body>
	<!-- Header -->
	
	
    <!-- Preloader Start -->
    <div class="ft-preloader active">
        <div class="ft-preloader-inner h-100 d-flex align-items-center justify-content-center">
            <div class="ft-child ft-bounce1"></div>
            <div class="ft-child ft-bounce2"></div>
            <div class="ft-child ft-bounce3"></div>
        </div>
    </div>
    <!-- Preloader End -->

    <!-- Main Wrapper Start -->
    <div class="wrapper">
        <!-- Header Start -->
        
        <!-- Header End -->

        <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">我的账号</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">主页</a></li>
                            <li class="current"><span>我的账号</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner ptb--80 ptb-md--60 pb-sm--55">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="user-dashboard-tab flex-column flex-md-row">
                                <div class="user-dashboard-tab__head nav flex-md-column" role="tablist" aria-orientation="vertical">
                                    <a class="nav-link active" data-toggle="pill" role="tab" href="#dashboard" aria-controls="dashboard" aria-selected="true">欢迎</a>
                                    <a class="nav-link" data-toggle="pill" role="tab" href="#orders" aria-controls="orders" aria-selected="true">订单</a>
                                    <a class="nav-link" data-toggle="pill" role="tab" href="#addresses" aria-controls="addresses" aria-selected="true">地址</a>
                                    <a class="nav-link" data-toggle="pill" role="tab" href="#accountdetails" aria-controls="accountdetails" aria-selected="true">账户信息</a>
                                    <a class="nav-link" href="login-register.html">退出登录</a>
                                </div>
                                <div class="user-dashboard-tab__content tab-content">
                                    <div class="tab-pane fade show active" id="dashboard">
                                        <p>您好 <strong>xxx先生/女生</strong> (不是 <strong>xxx</strong>? <a href="login-register.html">退出登录</a>)</p>
                                        <p>欢迎您的到来。 你可以查看 <a href="">最近的订单</a>，管理你的 <a href="">地址</a> 或 <a href="">编辑你的账户信息</a>.</p>
                                    </div>
                                    <div class="tab-pane fade" id="orders">
                                        <div class="message-box mb--30 d-none">
                                            <p><i class="fa fa-check-circle"></i>还没有订单</p>
                                            <a href="shop.html">查看购物商品</a>
                                        </div>
                                        <div class="table-content table-responsive">
                                            <table class="table text-center">
                                                <thead>
                                                    <tr>
                                                        <th>订单</th>
                                                        <th>日期</th>
                                                        <th>状态</th>
                                                        <th>总计</th>
                                                        <th>动作</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td class="wide-column">September 19, 2018</td>
                                                        <td>某个状态</td>
                                                        <td class="wide-column">Y49.00</td>
                                                        <td><a href="product-details.html" class="btn">查看</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td class="wide-column">September 19, 2018</td>
                                                        <td>某个状态</td>
                                                        <td class="wide-column">￥49.00</td>
                                                        <td><a href="product-details.html" class="btn">查看</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>                                 
                                    <div class="tab-pane fade" id="addresses">
                                        <p class="mb--20">默认情况下，结帐页面将使用以下地址。</p>
                                        <div class="row">
                                            <div class="col-md-6 mb-sm--20">
                                                <div class="text-block">
                                                    <h4 class="mb--20">地址</h4>
                                                    <a href="">编辑</a>
                                                    <p>地址xxx</p>
                                                </div>
                                            </div>                                        
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="accountdetails">
                                        <form action="#" class="form form--account">
                                            <div class="row mb--20">
                                                <div class="col-md-6 mb-sm--20">
                                                    <div class="form__group">
                                                        <label class="form__label" for="f_name">名 <span class="required">*</span></label>
                                                        <input type="text" name="f_name" id="f_name" class="form__input">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form__group">
                                                        <label class="form__label" for="l_name">姓<span class="required">*</span></label>
                                                        <input type="text" name="l_name" id="l_name" class="form__input">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb--20">
                                                <div class="col-12">
                                                    <div class="form__group">
                                                        <label class="form__label" for="d_name">称谓 <span class="required">*</span></label>
                                                        <input type="text" name="d_name" id="d_name" class="form__input">
                                                        <span class="form__notes"><em>选择我们对您的称谓</em></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb--20">
                                                <div class="col-12">
                                                    <div class="form__group">
                                                        <label class="form__label" for="email">电子邮件 <span class="required">*</span></label>
                                                        <input type="email" name="email" id="email" class="form__input">
                                                    </div>
                                                </div>
                                            </div>
                                            <fieldset class="form__fieldset mb--20">
                                                <legend class="form__legend">密码修改</legend>
                                                <div class="row mb--20">
                                                    <div class="col-12">
                                                        <div class="form__group">
                                                            <label class="form__label" for="cur_pass">当前密码 (留空保持不变)</label>
                                                            <input type="password" name="cur_pass" id="cur_pass" class="form__input">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row mb--20">
                                                    <div class="col-12">
                                                        <div class="form__group">
                                                            <label class="form__label" for="new_pass">新密码 (留空保持不变)</label>
                                                            <input type="password" name="new_pass" id="new_pass" class="form__input">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="form__group">
                                                            <label class="form__label" for="conf_new_pass">验证密码（再次输入新密码）</label>
                                                            <input type="password" name="conf_new_pass" id="conf_new_pass" class="form__input">
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="form__group">
                                                        <input type="submit" value="保存" class="btn">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->

        <!-- Footer Start-->
        
        <!-- Footer End-->

        <!-- OffCanvas Menu Start -->
        
        <!-- OffCanvas Menu End -->

        <!-- Mini Cart Start -->
        
        <!-- Mini Cart End -->

        <!-- Qicuk View Modal Start -->
        
        <!-- Qicuk View Modal End -->

        <!-- Global Overlay Start -->
        <div class="global-overlay"></div>
        <!-- Global Overlay End -->

        <!-- Scroll To Top Start -->
        <a class="scroll-to-top" href=""><i class="fa fa-angle-double-up"></i></a>
        <!-- Scroll To Top End -->
    </div>
    <!-- Main Wrapper End -->

    <!-- ************************* JS Files ************************* -->

    <!-- jQuery JS -->
    <script src="${pageContext.request.contextPath}/client/shop/js/vendor.js"></script>

    <!-- Main JS -->
    <script src="${pageContext.request.contextPath}/client/shop/js/main.js"></script>
</body>

</html>