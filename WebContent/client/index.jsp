<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>EXCELLENT官方网站</title>
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
        function addfavor(consumer, id) {
            if(!consumer){
                alert("您还未登录，请登陆后添加心愿单~");
                location.href = "${pageContext.request.contextPath}/client/login.jsp";
            }else{
                location.href = "${pageContext.request.contextPath}/AddFavorController?lid="+id;
            }
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

        <!-- Main Content Wrapper Start -->
        <main class="main-content-wrapper">
            <!-- Slider area Start -->
            <section class="homepage-slider mb--11pt5">
                <div class="element-carousel slick-right-bottom" data-slick-options='{
                    "slidesToShow": 1, 
                    "dots": true
                }'>
                    <div class="item">
                        <div class="single-slide height-2 d-flex align-items-center bg-image"
                            data-bg-image="${pageContext.request.contextPath}/client/product/image/cover/cover-gucci.jpg">
                            <div class="container">
                                <div class="row align-items-center no-gutters w-100">
                                    <div class="col-lg-6 col-md-8">
                                        <div class="slider-content py-0">
                                            <div class="slider-content__text mb--95 md-lg--80 mb-md--40 mb-sm--15">
                                                <h3 class="text-uppercase font-weight-light" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s" style="color:#fff">Gucci肩背包</h3>
                                                <h1 class="heading__primary mb--40 mb-md--20" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s" style="color:#fff">马衔扣1955系列</h1>
                                                <p class="font-weight-light" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s" style="color:#fff">马衔扣1955系列手袋在2020早春系列中惊艳亮相，以全新视角演绎经典设计。这一手袋延用了六十余年前经典单品的线条与造型，将经典细节与现代精神巧妙融合，强调了马衔扣这一品牌标志性设计元素。</p>
                                            </div>
                                            <div class="slider-content__btn">
                                                <a href="${pageContext.request.contextPath}/FindProductByIdController?id=321" class="btn-link" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".6s" style="color:#fff">立即购买</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="single-slide height-2 d-flex align-items-center bg-image"
                            data-bg-image="${pageContext.request.contextPath}/client/product/image/cover/cover-ring.jpg">
                            <div class="container">
                                <div class="row align-items-center no-gutters w-100">
                                    <div class="col-lg-6 col-md-8">
                                        <div class="slider-content py-0">
                                            <div class="slider-content__text mb--95 md-lg--80 mb-md--40 mb-sm--15">
                                                <h3 class="text-uppercase font-weight-light" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"  style="color:#fff">950铂金戒指</h3>
                                                <h1 class="heading__primary mb--40 mb-md--20" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"  style="color:#fff">Lace 「蕾丝」</h1>
                                                <p class="font-weight-light" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"  style="color:#fff">设计灵感源自延龄草，独特的三叶形态分别代表了纯洁、美丽及健康的美好祝愿。启发自印度奥里萨（Orissa）的镂空工艺，应用于铂金 Lace 戒指之上，以蕾丝图案代替叶纹，呈现优雅的女性美。</p>
                                            </div>
                                            <div class="slider-content__btn">
                                                <a href="shop.html" class="btn-link" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".6s"  style="color:#fff">立即购买</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="single-slide height-2 d-flex align-items-center bg-image"
                            data-bg-image="${pageContext.request.contextPath}/client/product/image/cover/cover-dior.jpg">
                            <div class="container">
                                <div class="row align-items-center no-gutters w-100">
                                    <div class="col-lg-6 col-md-8">
                                        <div class="slider-content py-0">
                                            <div class="slider-content__text mb--95 md-lg--80 mb-md--40 mb-sm--15">
                                                <h3 class="text-uppercase font-weight-light" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"  style="color:#fff">Dior真我</h3>
                                                <h1 class="heading__primary mb--40 mb-md--20" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"  style="color:#fff">倾世之金香氛</h1>
                                                <p class="font-weight-light" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".3s"  style="color:#fff">倾世之金香氛高贵感性，是真我系列精髓之作。相互交织的茉莉纯香和五月玫瑰，来自于格拉斯Dior迪奥专属合作庄园，唤出香草晚香玉迷人的东方气息。</p>
                                            </div>
                                            <div class="slider-content__btn">
                                                <a href="shop.html" class="btn-link" data-animation="fadeInUp"
                                                    data-duration=".3s" data-delay=".6s"  style="color:#fff">立即购买</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Slider area End -->

            <!-- 1 Featured Product Area Start -->
            <section class="featured-product-area mb--10pt8">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="sr-only">匠心之作</h2>
                        </div>
                    </div>
                    <div class="row align-items-center">
                        <div class="col-md-6 mb-sm--50">
                            <div class="featured-product">
                            	<a href="${pageContext.request.contextPath}/FindProductByIdController?id=20"><div class="featured-product__inner info-center">
                                    <figure class="featured-product__image">
                                        <img src="${pageContext.request.contextPath}/client/product/image/peishi/20/peishi-20.jpg" alt="Featured Product">
                                    </figure>
                                    <div class="featured-product__info wow pbounceInLeft" data-wow-delay="0.1s" data-wow-duration="0.9s">
                                        <div class="featured-product__info-inner">
                                            <h2 class="featured-product__name">耳环</h2>
                                        </div>
                                    </div>
                                </div></a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="featured-product">
                                <a href="${pageContext.request.contextPath}/FindProductByIdController?id=112"><div class="featured-product__inner info-left-bottom">
                                    <figure class="featured-product__image">
                                        <img src="${pageContext.request.contextPath}/client/product/image/fushi/cloth-12.jpg" alt="Featured Product">
                                    </figure>
                                    <div class="featured-product__info wow pbounceInDown" data-wow-duration="1s">
                                        <div class="featured-product__info-inner rotated-info">
                                            <h2 class="featured-product__name">时尚服饰</h2>
                                        </div>
                                    </div>
                                </div></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <!-- 2 Featured Product Area Start -->
            <section class="featured-product-area mb--10pt8">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="sr-only">匠心之作</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 mb-sm--50">
                            <div class="featured-product text-md-left text-center p-0">
                                <a href="${pageContext.request.contextPath}/FindProductByIdController?id=101"><div class="featured-product__inner info-left-center">
                                    <figure class="featured-product__image">
                                        <img src="${pageContext.request.contextPath}/client/product/image/fushi/cloth-1.jpg" alt="Featured Product">
                                    </figure>
                                    <div class="featured-product__info wow pbounceInDown" data-wow-delay=".3s"
                                        data-wow-duration=".8s">
                                        <div class="featured-product__info-inner">
                                            <h2 class="featured-product__name font-size-34">穿搭</h2>
                                        </div>
                                    </div>
                                </div></a>
                            </div>
                        </div>
                        <div class="col-md-4 mb-sm--50">
                            <div class="featured-product text-md-left text-center p-0">
                                <a href="${pageContext.request.contextPath}/FindProductByIdController?id=318"><div class="featured-product__inner info-left-center">
                                    <figure class="featured-product__image">
                                        <img src="${pageContext.request.contextPath}/client/product/image/piju/piju-18.jpg" alt="Featured Product">
                                    </figure>
                                    <div class="featured-product__info wow pbounceInDown" data-wow-delay=".6s"
                                        data-wow-duration=".8s">
                                        <div class="featured-product__info-inner">
                                            <h2 class="featured-product__name font-size-34">皮具</h2>
                                        </div>
                                    </div>
                                </div></a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="featured-product text-md-left text-center p-0">
                                <a href="${pageContext.request.contextPath}/FindProductByIdController?id=305"><div class="featured-product__inner info-left-center">
                                    <figure class="featured-product__image">
                                        <img src="${pageContext.request.contextPath}/client/product/image/piju/piju-5.jpg" alt="Featured Product">
                                    </figure>
                                    <div class="featured-product__info wow pbounceInDown" data-wow-delay=".9s"
                                        data-wow-duration=".8s">
                                        <div class="featured-product__info-inner">
                                            <h2 class="featured-product__name font-size-34">手袋</h2>
                                        </div>
                                    </div>
                                </div></a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Featured Product Area End -->

            <!-- Product Area Start -->
            <section class="product-area mb--50 mb-xl--40 mb-lg--25 mb-md--30 mb-sm--20">
                <div class="container">
                    <div class="row mb--42">
                        <div class="col-xl-5 col-lg-6 col-sm-10">
                            <h2 class="heading__secondary">新品上市</h2>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${new_list}" var="entry" varStatus="vs">
                            <div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
                                <div class="payne-product">
                                    <div class="product__inner">
                                        <div class="product__image">
                                            <figure class="product__image--holder">
                                                <img src="${pageContext.request.contextPath}/${entry.IMAGE}" alt="Product">
                                            </figure>
                                            <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${entry.LID}" class="product-overlay"></a>
                                            <div class="product__action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                                <a href="#" class="action-btn" onclick="addfavor('${consumer}','${entry.LID}')">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="sr-only">Add to wishlist</span>
                                                </a>
                                                <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${entry.LID}" class="action-btn">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="sr-only">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__info">
                                            <div class="product__info--left">
                                                <h3 class="product__title">
                                                    <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${entry.LID}">${entry.LNAME}</a>
                                                </h3>
                                                <div class="product__price">
                                                    <span class="money">${entry.PRICE}</span>
                                                    <span class="sign">￥</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section>
            <!-- Product Area End -->

            <!-- Product Area Start -->
            <section class="product-area mb--50 mb-xl--40 mb-lg--25 mb-md--30 mb-sm--20">
                <div class="container">
                    <div class="row mb--42">
                        <div class="col-xl-5 col-lg-6 col-sm-10">
                            <h2 class="heading__secondary">热卖商品</h2>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${hot_list}" var="entry" varStatus="vs">
                            <div class="col-lg-3 col-md-4 col-sm-6 mb--65 mb-md--50">
                                <div class="payne-product">
                                    <div class="product__inner">
                                        <div class="product__image">
                                            <figure class="product__image--holder">
                                                <img src="${pageContext.request.contextPath}/${entry.IMAGE}" alt="Product">
                                            </figure>
                                            <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${entry.LID}" class="product-overlay"></a>
                                            <div class="product__action">
                                                <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                    <i class="fa fa-eye"></i>
                                                    <span class="sr-only">Quick View</span>
                                                </a>
                                                <a href="#" class="action-btn" onclick="addfavor('${consumer}','${entry.LID}')">
                                                    <i class="fa fa-heart-o"></i>
                                                    <span class="sr-only">Add to wishlist</span>
                                                </a>
                                                <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${entry.LID}" class="action-btn">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    <span class="sr-only">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__info">
                                            <div class="product__info--left">
                                                <h3 class="product__title">
                                                    <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${entry.LID}">${entry.LNAME}</a>
                                                </h3>
                                                <div class="product__price">
                                                    <span class="money">${entry.PRICE}</span>
                                                    <span class="sign">￥</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section>
            <!-- Product Area End -->


            <section class="method-area mb--11pt5">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="sr-only">Methods</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 mb-sm--50">
                            <div class="method-box shipment-method" style="height:190px">
                                <i class="flaticon-truck"></i>
                                <h3>免费顺丰速递</h3>
                            </div>
                        </div>
                        <div class="col-md-4 mb-sm--50">
                            <div class="method-box money-back-method" style="height:190px">
                                <i class="flaticon-money"></i>
                                <h3>7天无理由退货</h3>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="method-box support-method" style="height:190px">
                                <i class="flaticon-support"></i>
                                <h3>24时售后服务</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- Main Content Wrapper End -->

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
    
    <!-- search box -->
	
</body>

</html>