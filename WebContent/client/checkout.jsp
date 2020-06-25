<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>确定订单</title>
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
    <script>
        function checkout(){
            alert("提交订单成功！")
        }

    </script>

</head>

<body> 

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
        <jsp:include page = "head.jsp"></jsp:include>
        <!-- Header End -->

        <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">确认订单</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Excellent</a></li>
                            <li class="current"><span>确认订单</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->
 
        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner pt--80 pt-md--60 pb--72 pb-md--60">
                <div class="container">
                    <div class="row">
                        <!-- Checkout Area Start --> 
                         
                        <div class="col-lg-6">
                            <div class="checkout-title mt--10">
                                <h2>收件信息</h2>
                            </div>
                            <div class="checkout-form">
                                <form action="${pageContext.request.contextPath}/SubmitOrderController" class="form form--checkout">
                                    <div class="form-row mb--20">
                                        <div class="form__group col-md-6 mb-sm--30">
                                            <label for="billing_fname" class="form__label">姓氏  <span class="required">*</span></label>
                                            <input type="text" name="billing_fname" id="billing_fname" class="form__input" placeholder="${order.consumer.CNAME}">
                                        </div>
                                        <div class="form__group col-md-6">
                                            <label for="billing_lname" class="form__label">名字  <span class="required">*</span></label>
                                            <input type="text" name="billing_lname" id="billing_lname" class="form__input">
                                        </div>
                                    </div>
                                    <div class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="billing_phone" class="form__label">手机号码 <span class="required">*</span></label>
                                            <input type="text" name="billing_phone" id="billing_phone" class="form__input" placeholder="${order.consumer.PN}">
                                        </div>
                                    </div>
                                    <div class="form-row mb--20">
                                        <div class="form__group col-md-6 mb-sm--30">
                                            <label class="form__label">省份  <span class="required">*</span></label>
                                            <input type="text" name="province" id="province" class="form__input" placeholder="${order.consumer.PROVINCE}">
                                        </div>
                                        <div class="form__group col-md-6">
                                            <label for="billing_city" class="form__label">城市  <span class="required">*</span></label>
                                            <input type="text" name="billing_city" id="billing_city" class="form__input" placeholder="${order.consumer.CITY}">
                                        </div>
                                    </div>
                                    <div class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="billing_district" class="form__label">区县 <span class="required">*</span></label>
                                            <input type="text" name="billing_district" id="billing_district" class="form__input" placeholder="${order.consumer.DISTRICT}">
                                        </div>
                                    </div>
                                    <div class="form-row mb--20">
                                        <div class="form__group col-12">
                                            <label for="billing_streetAddress" class="form__label">详细地址<span class="required">*</span></label>
                                            <input type="text" name="billing_streetAddress" id="billing_streetAddress" class="form__input mb--30" placeholder="${order.consumer.ADDR}">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form__group col-12">
                                            <label for="orderNotes" class="form__label">订单备注</label>
                                            <input type="text" name="remark" class="form__input form__input--textarea" id="orderNotes" placeholder="${order.REMARK}"/>
                                        </div>
                                    </div>

                            </div>
                        </div>
                        <div class="col-xl-5 offset-xl-1 col-lg-6 mt-md--40">
                            <div class="order-details">
                                <div class="checkout-title mt--10">
                                    <h2>商品清单</h2>
                                </div>
                                <div class="table-content table-responsive mb--30">
                                    <table class="table order-table order-table-2">
                                        <thead>
                                            <tr>
                                                <th>商品</th>
                                                <th class="text-right">金额</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:set var="total" value="0" /> 
                                            <c:forEach items="${order.orderItems}" var="entry" varStatus="vs">
                                                <tr>
                                                    <th>${entry.luxury.LNAME}
                                                        <strong><span>&#10005;</span>${entry.NUM}</strong>
                                                    </th>
                                                <td class="text-right">￥${entry.luxury.PRICE}</td>
                                                </tr>
                                            <c:set value="${total+entry.luxury.PRICE*entry.NUM}" var="total" />
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr class="cart-subtotal">
                                                <th>小计</th>
                                                <td class="text-right">￥${total}</td>
                                            </tr>
                                            <tr class="shipping">
                                                <th>运费</th>
                                                <td class="text-right">
                                                    <span>￥${order.orderItems.size()*5}</span>
                                                </td>
                                            </tr>
                                            <tr class="order-total">
                                                <th>总计</th>
                                                <td class="text-right"><span class="order-total-ammount">￥${total+order.orderItems.size()*5}</span></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <div class="checkout-title mt--10">
                                    <h2>支付方式</h2>
                                </div>
                                <div class="checkout-payment">
                                    
                                        <div class="payment-group mb--10">
                                            <div class="payment-radio">
                                                <input type="radio" value="中国银行" name="pay" id="bank" checked>
                                                <label class="payment-label" for="bank">中国银行</label>
                                            </div>
                                            <div class="payment-info" data-method="bank">
                                                <p>使用中国银行信用卡进行支付。</p>
                                            </div>
                                        </div>
                                        <div class="payment-group mb--10">
                                            <div class="payment-radio">
                                                <input type="radio" value="支付宝" name="pay" id="cheque">
                                                <label class="payment-label" for="cheque">支付宝</label>
                                            </div>
                                            <div class="payment-info cheque hide-in-default" data-method="cheque">
                                                <p>使用支付宝支付。</p>
                                            </div>
                                        </div>
                                        <div class="payment-group mb--10">
                                            <div class="payment-radio">
                                                <input type="radio" value="微信" name="pay" id="cash">
                                                <label class="payment-label" for="cash">微信</label>
                                            </div>
                                            <div class="payment-info cash hide-in-default" data-method="cash">
                                                <p>使用微信支付。</p>
                                            </div>
                                        </div>
                                        <div class="payment-group mt--20">
                                            <p class="mb--15">您的个人数据将用于处理您的订单，支持您在整个网站上的体验以及用于我们的隐私政策中所述的其他目的。</p>
                                            <button type="submit" class="btn btn-size-md btn-fullwidth" onclick="checkout()">提交订单</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Checkout Area End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->

        <!-- Footer Start-->
		<jsp:include page = "foot.jsp"></jsp:include>
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