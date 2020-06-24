<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>商品详情页</title>
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
        function addcart(pnum, id){
            alert("已加入购物车");
            pnum = parseInt(pnum);
            var element = document.getElementById("pro-qty");
            var count = parseInt(element.value);
            if (count > pnum){
                alert("已达到商品最大购买量");
                count = pnum;
            }
            location.href = "${pageContext.request.contextPath}/addCartController?id="
                    + id + "&count=" + count;
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
                        <h1 class="page-title">商品详情</h1>
                        <ul class="breadcrumb">
                            <li><a href="${pageContext.request.contextPath}/client/index.jsp">Excellent</a></li>
                            <li class="current"><span>商品详情</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner pt--80 pt-md--60">
                <div class="container">
                    <div class="row no-gutters mb--75 mb-md--57">
                        <div class="col-lg-7 product-main-image">
                            <div class="product-image">
                                <div class="product-gallery">
                                    <div class="product-gallery__large-image">
                                        <div class="product-gallery__wrapper">
                                            <div class="row gutter-10">
                                                <div class="col-12 mb--10">
                                                    <figure class="product-gallery__image">
                                                        <img src="${pageContext.request.contextPath}/client/shop/img/products/product-02-500x575.jpg"
                                                            alt="Product">
                                                    </figure>
                                                </div>
                                                <div class="col-6 mb--10">
                                                    <figure class="product-gallery__image">
                                                        <img src="${pageContext.request.contextPath}/client/shop/img/products/product-01-500x466.jpg"
                                                            alt="Product">
                                                    </figure>
                                                </div>
                                                <div class="col-6 mb--10">
                                                    <figure class="product-gallery__image">
                                                        <img src="${pageContext.request.contextPath}/client/shop/img/products/product-15-500x466.jpg"
                                                            alt="Product">
                                                    </figure>
                                                </div>
                                                <div class="col-12 mb--10">
                                                    <figure class="product-gallery__image">
                                                        <img src="${pageContext.request.contextPath}/client/shop/img/products/product-14-500x575.jpg"
                                                            alt="Product">
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="product-gallery__actions">
                                                <button class="action-btn btn-zoom-popup"><i
                                                        class="fa fa-eye"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <span class="product-badge sale">图片展示</span>
                            </div>
                        </div>
                        <div class="col-xl-4 offset-xl-1 col-lg-5 product-main-details mt-md--40" id="sticky-sidebar">
                            <div class="product-summary pl-lg--30 pl-md--0">
                            	<!-- 前后商品 -->
                                <div class="product-navigation text-right mb--20">
                                    <a href="#" class="prev"><i class="fa fa-angle-double-left"></i></a>
                                    <a href="#" class="next"><i class="fa fa-angle-double-right"></i></a>
                                </div>
                                
                                <h3 class="product-title mb--20">${p.LNAME}</h3>
                                <div class="product-price-wrapper mb--25">
                                    <span class="money">￥${p.PRICE}</span>
                                    <span class="price-separator">-</span>
                                    <span class="money">￥${p.PRICE+50}</span>
                                </div>
                                <div
                                    class="product-action d-flex flex-sm-row align-items-sm-center flex-column align-items-start mb--30">
                                    <div class="quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30">
                                        <label class="quantity-label" for="pro-qty">数量:</label>
                                        <div class="quantity">
                                            <input type="number" class="quantity-input" name="pro-qty" id="pro-qty"
                                                value="1" min="1" >
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-shape-square btn-size-sm"
                                        onclick="addcart('${p.RESTNUM}','${p.LID}')">加入购物车</button>
                                </div>
                                <div class="product-footer-meta">
                                    <p><span>分类:</span>
                                        <a href="shop.html">${p.TYPE}</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center mb--77 mb-md--57">
                        <div class="col-12">
                            <div class="tab-style-1">
                                <div class="nav nav-tabs mb--35 mb-sm--25" id="product-tab" role="tablist">
                                    <a class="nav-link active" id="nav-description-tab" data-toggle="tab"
                                        href="#nav-description" role="tab" aria-selected="true">
                                        <span>商品描述</span>
                                    </a>
                                    <a class="nav-link" id="nav-info-tab" data-toggle="tab" href="#nav-info" role="tab"
                                        aria-selected="true">
                                        <span>属性信息</span>
                                    </a>
                                    <a class="nav-link" id="nav-reviews-tab" data-toggle="tab" href="#nav-reviews"
                                        role="tab" aria-selected="true">
                                        <span>商品评价</span>
                                    </a>
                                </div>
                                <div class="tab-content" id="product-tabContent">
                                    <div class="tab-pane fade show active" id="nav-description" role="tabpanel"
                                        aria-labelledby="nav-description-tab">
                                        <div class="product-description">
                                            <h5 class="product-description__heading">商品信息:</h5>
                                            <ul>
                                                <li><i class="fa fa-circle"></i><span>${p.INFOR}</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-info" role="tabpanel"
                                        aria-labelledby="nav-info-tab">
                                        <div class="table-content table-responsive">
                                            <table class="table shop_attributes">
                                                <tbody>
                                                    <tr>
                                                        <th>重量</th>
                                                        <td>${p.WEIGHT} Kg</td>
                                                    </tr>
                                                    <tr>
                                                        <th>尺寸</th>
                                                        <td>${p.SIZE} cm</td>
                                                    </tr>
                                                    <tr>
                                                        <th>颜色</th>
                                                        <td>
                                                            <a href="shop.html">${p.COLOR}</a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-reviews" role="tabpanel"
                                        aria-labelledby="nav-reviews-tab">
                                        <div class="product-reviews">
                                            <h3 class="review__title">1条评论</h3>
                                            <ul class="review__list">
                                                <li class="review__item">
                                                    <div class="review__container">
                                                        <img src="${pageContext.request.contextPath}/client/shop/img/others/comment-1.jpg" alt="Review Avatar"
                                                            class="review__avatar">
                                                        <div class="review__text">
                                                            <div
                                                                class="d-flex flex-sm-row flex-column justify-content-between">
                                                                <div class="review__meta">
                                                                    <strong class="review__author">买家ABC</strong>
                                                                    <span class="review__dash">-</span>
                                                                    <span class="review__published-date">2019-6-12</span>
                                                                </div>
                                                            </div>
                                                            <p class="review__description">评价内容评价内容评价内容评价内容评价内容评价内容评价内容评价内容评价内容评价内容评价内容评价内容评价内容</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="review-form-wrapper">
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <span class="reply-title">我也要评价..</span>
                                                        <form action="#" class="form pr--30">
                                                            <div class="form-notes mb--20">
                                                                <p>您的电子邮箱不会被公开。*号标记的地方为必填项。 </p>
                                                            </div>
                                                            <div class="form__group mb--10">
                                                                <label class="form__label d-block mb--10" for="email">评价内容<span class="required">*</span></label>
                                                                <textarea name="review" id="review"
                                                                    class="form__input form__input--textarea"></textarea>
                                                            </div>
                                                            <div class="form__group mb--20">
                                                                <label class="form__label d-block mb--10" for="name">姓名<span
                                                                        class="required">*</span></label>
                                                                <input type="text" name="name" id="name"
                                                                    class="form__input">
                                                            </div>
                                                            <div class="form__group mb--20">
                                                                <label class="form__label d-block mb--10"
                                                                    for="email">电子邮箱<span
                                                                        class="required">*</span></label>
                                                                <input type="email" name="email" id="email"
                                                                    class="form__input">
                                                            </div>
                                                            <div class="form__group">
                                                                <div class="form-row">
                                                                    <div class="col-12">
                                                                        <input type="submit" value="提交评价"
                                                                            class="btn btn-size-md">
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
                    </div>
                    
                    <div class="nav nav-tabs mb--35 mb-sm--25" id="product-tab" role="tablist">
						<h3 class="review__title">相关商品</h3>
                    </div>
                    <div class="row mb--77 mb-md--57">
                        <div class="col-12">
                            <div class="element-carousel slick-vertical-center" data-slick-options='{
                                    "spaceBetween": 30,
                                    "slidesToShow": 4,
                                    "slidesToScroll": 1,
                                    "arrows": true,
                                    "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "la la-angle-double-left" },
                                    "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "la la-angle-double-right" }
                                }' data-slick-responsive='[
                                    {"breakpoint":1199, "settings": {
                                        "slidesToShow": 3
                                    }},
                                    {"breakpoint":991, "settings": {
                                        "slidesToShow": 2
                                    }},
                                    {"breakpoint":575, "settings": {
                                        "slidesToShow": 1
                                    }}
                                ]'>
                                
                                <!-- 相关商品 -->
                                <div class="item">
                                    <div class="payne-product">
                                        <div class="product__inner">
                                            <div class="product__image">
                                                <figure class="product__image--holder">
                                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-03-270x300.jpg" alt="Product">
                                                </figure>
                                                <a href="product-details.html" class="product__overlay"></a>
                                                <div class="product__action">
                                                    <a data-toggle="modal" data-target="#productModal"
                                                        class="action-btn">
                                                        <i class="fa fa-eye"></i>
                                                        <span class="sr-only">Quick View</span>
                                                    </a>
                                                    <a href="wishlist.html" class="action-btn">
                                                        <i class="fa fa-heart-o"></i>
                                                        <span class="sr-only">Add to wishlist</span>
                                                    </a>
                                                    <a href="cart.html" class="action-btn">
                                                        <i class="fa fa-shopping-cart"></i>
                                                        <span class="sr-only">Add To Cart</span>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product__info">
                                                <div class="product__info--left">
                                                    <h3 class="product__title">
                                                        <a href="product-details.html">商品B</a>
                                                    </h3>
                                                    <div class="product__price">
                                                        <span class="money">132.00</span>
                                                        <span class="sign">￥</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="payne-product">
                                        <div class="product__inner">
                                            <div class="product__image">
                                                <figure class="product__image--holder">
                                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-05-270x300.jpg" alt="Product">
                                                </figure>
                                                <a href="product-details.html" class="product-overlay"></a>
                                                <div class="product__action">
                                                    <a data-toggle="modal" data-target="#productModal"
                                                        class="action-btn">
                                                        <i class="fa fa-eye"></i>
                                                        <span class="sr-only">Quick View</span>
                                                    </a>
                                                    <a href="wishlist.html" class="action-btn">
                                                        <i class="fa fa-heart-o"></i>
                                                        <span class="sr-only">Add to wishlist</span>
                                                    </a>
                                                    <a href="cart.html" class="action-btn">
                                                        <i class="fa fa-shopping-cart"></i>
                                                        <span class="sr-only">Add To Cart</span>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product__info">
                                                <div class="product__info--left">
                                                    <h3 class="product__title">
                                                        <a href="product-details.html">商品C</a>
                                                    </h3>
                                                    <div class="product__price">
                                                        <span class="money">132.00</span>
                                                        <span class="sign">￥</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="payne-product">
                                        <div class="product__inner">
                                            <div class="product__image">
                                                <figure class="product__image--holder">
                                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-06-270x300.jpg" alt="Product">
                                                </figure>
                                                <a href="product-details.html" class="product-overlay"></a>
                                                <div class="product__action">
                                                    <a data-toggle="modal" data-target="#productModal"
                                                        class="action-btn">
                                                        <i class="fa fa-eye"></i>
                                                        <span class="sr-only">Quick View</span>
                                                    </a>
                                                    <a href="wishlist.html" class="action-btn">
                                                        <i class="fa fa-heart-o"></i>
                                                        <span class="sr-only">Add to wishlist</span>
                                                    </a>
                                                    <a href="cart.html" class="action-btn">
                                                        <i class="fa fa-shopping-cart"></i>
                                                        <span class="sr-only">Add To Cart</span>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product__info">
                                                <div class="product__info--left">
                                                    <h3 class="product__title">
                                                        <a href="product-details.html">商品D</a>
                                                    </h3>
                                                    <div class="product__price">
                                                        <span class="money">132.00</span>
                                                        <span class="sign">￥</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="payne-product">
                                        <div class="product__inner">
                                            <div class="product__image">
                                                <figure class="product__image--holder">
                                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-08-270x300.jpg" alt="Product">
                                                </figure>
                                                <a href="product-details.html" class="product-overlay"></a>
                                                <div class="product__action">
                                                    <a data-toggle="modal" data-target="#productModal"
                                                        class="action-btn">
                                                        <i class="fa fa-eye"></i>
                                                        <span class="sr-only">Quick View</span>
                                                    </a>
                                                    <a href="wishlist.html" class="action-btn">
                                                        <i class="fa fa-heart-o"></i>
                                                        <span class="sr-only">Add to wishlist</span>
                                                    </a>
                                                    <a href="cart.html" class="action-btn">
                                                        <i class="fa fa-shopping-cart"></i>
                                                        <span class="sr-only">Add To Cart</span>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product__info">
                                                <div class="product__info--left">
                                                    <h3 class="product__title">
                                                        <a href="product-details.html">商品E</a>
                                                    </h3>
                                                    <div class="product__price">
                                                        <span class="money">132.00</span>
                                                        <span class="sign">￥</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
</body>

</html>