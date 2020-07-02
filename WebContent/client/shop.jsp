<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>分类搜索页</title>
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
        <!-- Header -->
        <jsp:include page = "head.jsp"></jsp:include>
        <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">分类搜索</h1>
                        <ul class="breadcrumb">
                            <li><a href="${pageContext.request.contextPath}/client/index.jsp">Excellent</a></li>
                            <li class="current"><span>分类搜索</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div  class="main-content-wrapper">
            <div class="shop-page-wrapper ptb--80">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-9 col-lg-8 order-lg-2 mb-md--50">
                            <div class="shop-toolbar mb--50">
                                <div class="row align-items-center">
                                    <div class="col-md-5 mb-sm--30 mb-xs--10">
                                        <div class="shop-toolbar__left">
                                            <div class="product-ordering">
                                                <select class="product-ordering__select nice-select">
                                                    <option value="0">综合排序</option>
                                                    <option value="1">时间排序</option>
                                                    <option value="2">销量排序</option>
                                                    <option value="3">价格从低到高</option>
                                                    <option value="4">价格从高到低</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="shop-toolbar__right">
                                            <div class="product-view-mode ml--50 ml-xs--0">
                                                <a class="active" href="#" data-target="grid">
                                                    <img src="${pageContext.request.contextPath}/client/shop/img/icons/grid.png" alt="Grid">
                                                </a>
                                                <a href="#" data-target="list">
                                                    <img src="${pageContext.request.contextPath}/client/shop/img/icons/list.png" alt="Grid">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="shop-products">
                                <div class="row">
                                    <c:forEach items="${bean.luxuryList }" var="p">
                                        <div class="col-xl-4 col-sm-6 mb--50">
                                            <div class="payne-product">
                                                <div class="product__inner">
                                                    <div class="product__image">
                                                        <figure class="product__image--holder">
                                                            <img src="${pageContext.request.contextPath}/${p.IMAGE}" alt="Product">
                                                        </figure>
                                                        <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${p.LID}" class="product-overlay"></a>
                                                        <div class="product__action">
                                                            <!-- <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="fa fa-eye"></i>
                                                                <span class="sr-only">Quick View</span>
                                                            </a> -->
                                                            <a href="#" class="action-btn" onclick="addfavor('${consumer}','${p.LID}')">
                                                                <i class="fa fa-heart-o"></i>
                                                                <span class="sr-only">Add to wishlist</span>
                                                            </a>
                                                            <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${p.LID}" class="action-btn">
                                                                <i class="fa fa-shopping-cart"></i>
                                                                <span class="sr-only">Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product__info">
                                                        <div class="product__info--left">
                                                            <h3 class="product__title">
                                                                <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${p.LID}">${p.LNAME }</a>
                                                            </h3>
                                                            <div class="product__price">
                                                                <span class="sign">￥</span>
                                                                <span class="money">${p.PRICE}</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="payne-product-list">
                                                <div class="product__inner">
                                                    <figure class="product__image">
                                                        <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${p.LID}" class="d-block">
                                                            <img src="${pageContext.request.contextPath}/${p.IMAGE}" alt="Products">
                                                        </a>
                                                        <div class="product__thumbnail-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="fa fa-eye"></i>
                                                                <span class="sr-only">Quick View</span>
                                                            </a>
                                                        </div>
                                                    </figure>
                                                    <div class="product__info">
                                                        <h3 class="product__title">
                                                            <a href="${pageContext.request.contextPath}/FindProductByIdController?id=${p.LID}">Lexbaro Begadi</a>
                                                        </h3>
                                                        <div class="product__price">
                                                            <span class="money">132.00</span>
                                                            <span class="sign">$</span>
                                                        </div>
                                                        <p class="product__short-description">
                                                            Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                        </p>  
                                                        <div class="d-flex product__list-action">
                                                            <a href="cart.html" class="btn btn-size-sm">Add To Cart</a>
                                                        </div>                                            
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
								    </c:forEach>
                                </div>
                            </div>
                            <nav class="pagination-wrap">
                                <ul class="pagination">
                                    <%--上一页 --%>
                                    <c:if test="${bean.currentPage !=1 }">
                                        <li >
                                        <a class="page-number" href="${pageContext.request.contextPath}/showProductByPage?currentPage=${bean.currentPage-1 }&category=${bean.category}">《《</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${bean.currentPage == 1 }">
                                    <li><span class="page-number current">《《</span></li>
                                    </c:if>
                                    <%--上一页 --%>
                                    
                                    <%--页码数 --%>
                                    <c:forEach begin="1" end="${bean.totalPage }" var="pageNum">
                                        <c:if test="${pageNum == bean.currentPage }">
                                            <li><span class="page-number current">${pageNum}</span></li>
                                        </c:if>
                                        <c:if test="${pageNum != bean.currentPage }">
                                            <li><a class="page-number" href="${pageContext.request.contextPath}/showProductByPage?currentPage=${pageNum}&category=${bean.category}">${pageNum}</a></li>
                                        </c:if>
                                    </c:forEach>
                                    <%--页码数 --%>
                                            
                                    <%--下一页 --%>
                                    <c:if test="${bean.currentPage != bean.totalPage && bean.totalPage!=0}">
                                        <li>
                                        <a class="page-number"   href="${pageContext.request.contextPath}/showProductByPage?currentPage=${bean.currentPage+1 }&category=${bean.category}">》》</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${bean.currentPage == bean.totalPage || bean.totalPage==0}">
                                        <li><span class="page-number current">》》</span></li>
                                    </c:if>
                                    <%--下一页 --%>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-xl-3 col-lg-4 order-lg-1">
                            <aside class="shop-sidebar">
                                <div class="shop-widget mb--40">
                                    <h3 class="widget-title mb--25">分类</h3>
                                    <ul class="widget-list category-list">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/showProductByPage?category=皮具">
                                                <span class="category-title">皮具系列</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/showProductByPage?category=香氛">
                                                <span class="category-title">香水/香氛</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/showProductByPage?category=服饰">
                                                <span class="category-title">时尚服饰</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/showProductByPage?category=配饰">
                                                <span class="category-title">珠宝/配饰系列</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="shop-widget mb--40">
                                    <h3 class="widget-title mb--25">Price</h3>
                                    <ul class="widget-list price-list">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/ShowProductByPageAndSearchByPrice?currentPage=1&minprice=300.00&maxprice=5000.00">
                                                <span>Low - Medium</span>
                                                <strong class="font-weight-medium">$300 - $5000</strong>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/ShowProductByPageAndSearchByPrice?currentPage=1&minprice=5000.00&maxprice=20000.00">
                                                <span>Medium - High</span>
                                                <strong class="font-weight-medium">$5000 - $20000</strong>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/ShowProductByPageAndSearchByPrice?currentPage=1&minprice=20000.00&maxprice=100000.00">
                                                <span>High - Avobe</span>
                                                <strong class="font-weight-medium">$20000</strong>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                
                                <div class="shop-widget mb--40">
                                    <h3 class="widget-title mb--25">品牌</h3>
                                    <ul class="widget-list brand-list">
                                        <li>
                                            <a href="shop.jsp">
                                                <span>Dior</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.jsp">
                                                <span>Chanel</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.jsp">
                                                <span>Gucci</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.jsp">
                                                <span>周生生</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->

        <!-- Footer -->
        <jsp:include page = "foot.jsp"></jsp:include>

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