<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="http://www.LuxutyShop.cn/tag" %>
<!doctype>
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
    <script>
        function favor_delitem(id){
            alert("取消收藏该商品成功");
            location.href = "${pageContext.request.contextPath}/DeleFavorController?LID="
                    + id;
        }
        function favor_add_cart(id, restnum){
            restnum = parseInt(restnum);
            if(restnum > 0) {
                alert("加入购物车成功！正在进入商品详情页面~");
                location.href = "${pageContext.request.contextPath}/addCartController?id="
                    + id + "&count=" + 1;
            }else{
                alert("该商品无货！");
                location.href = "${pageContext.request.contextPath}/FindFavorByConsumer";
            }
        }
    </script>
</head>

<body>
	<p:consumer/>
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
                        <h1 class="page-title">心愿单</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">主页</a></li>
                            <li class="current"><span>${consumer.CNAME}的心愿单</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner ptb--80 ptb-md--60">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="table-content table-responsive">
                                <table class="table table-style-2 wishlist-table text-center">
                                    <thead>
                                        <tr>
                                            <th>&nbsp;</th>
                                            <th>&nbsp;</th>
                                            <th class="text-left">商品</th>
                                            <th>库存状况</th>
                                            <th>价格</th>
                                            <th>&nbsp;</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${favorList}" var="entry" varStatus="vs">
                                            <tr>
                                            <td class="product-remove text-left"><a onclick="favor_delitem('${entry.luxury.LID}')" href="#"><i
                                                        class="flaticon-cross"></i></a></td>
                                            <td class="product-thumbnail text-left">
                                                <img src="${pageContext.request.contextPath}/${entry.luxury.IMAGE}"
                                                    alt="Product Thumnail">
                                            </td>
                                            <td class="product-name text-left wide-column">
                                                <h3>
                                                    <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${entry.LID}">${entry.luxury.LNAME}</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
                                                ${stateFavor[vs.count-1]}
                                            </td>
                                            <td class="product-price">
                                                <span class="product-price-wrapper">
                                                    <span class="money">￥${entry.luxury.PRICE}</span>
                                                </span>
                                            </td>
                                            <td class="product-action-btn">
                                                <a onclick="favor_add_cart('${entry.luxury.LID}','${entry.luxury.RESTNUM}')" href="#" class="btn">添加到购物车</a>
                                            </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
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