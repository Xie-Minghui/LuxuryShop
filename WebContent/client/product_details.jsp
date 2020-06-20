<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
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

        <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">商品详情</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>Sticky Left</span></li>
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
                                            	<!-- 图片展示 -->
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
                                <span class="product-badge sale">Sale</span>
                            </div>
                        </div>
                        <div class="col-xl-4 offset-xl-1 col-lg-5 product-main-details mt-md--40" id="sticky-sidebar">
                            <div class="product-summary pl-lg--30 pl-md--0">
                                <div class="product-navigation text-right mb--20">
                                    <a href="#" class="prev"><i class="fa fa-angle-double-left"></i></a>
                                    <a href="#" class="next"><i class="fa fa-angle-double-right"></i></a>
                                </div>
                                <div class="product-rating d-flex mb--20">
                                    <div class="star-rating star-four">
                                        <span>Rated <strong class="rating">5.00</strong> out of 5</span>
                                    </div>
                                </div>
                                <h3 class="product-title mb--20">Golden Easy Spot Chair.</h3>
                                <p class="product-short-description mb--20">Donec accumsan auctor iaculis. Sed suscipit
                                    arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget,
                                    sodales orci. Aliquam egestas libero ac turpis pharetra, in vehicula lacus
                                    scelerisque. Vestibulum ut sem laoreet, feugiat tellus at, hendrerit arcu.</p>
                                <div class="product-price-wrapper mb--25">
                                    <span class="money">$200.00</span>
                                    <span class="price-separator">-</span>
                                    <span class="money">$400.00</span>
                                </div>
                                <form action="#" class="variation-form mb--20">
                                    <div class="product-size-variations d-flex align-items-center mb--15">
                                        <p class="variation-label">Size:</p>
                                        <div class="product-size-variation variation-wrapper">
                                            <div class="variation">
                                                <a class="product-size-variation-btn selected" data-toggle="tooltip"
                                                    data-placement="top" title="S">
                                                    <span class="product-size-variation-label">S</span>
                                                </a>
                                            </div>
                                            <div class="variation">
                                                <a class="product-size-variation-btn" data-toggle="tooltip"
                                                    data-placement="top" title="M">
                                                    <span class="product-size-variation-label">M</span>
                                                </a>
                                            </div>
                                            <div class="variation">
                                                <a class="product-size-variation-btn" data-toggle="tooltip"
                                                    data-placement="top" title="L">
                                                    <span class="product-size-variation-label">L</span>
                                                </a>
                                            </div>
                                            <div class="variation">
                                                <a class="product-size-variation-btn" data-toggle="tooltip"
                                                    data-placement="top" title="XL">
                                                    <span class="product-size-variation-label">XL</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="" class="reset_variations">Clear</a>
                                </form>
                                <div
                                    class="product-action d-flex flex-sm-row align-items-sm-center flex-column align-items-start mb--30">
                                    <div class="quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30">
                                        <label class="quantity-label" for="pro-qty">Quantity:</label>
                                        <div class="quantity">
                                            <input type="number" class="quantity-input" name="pro-qty" id="pro-qty"
                                                value="1" min="1">
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-shape-square btn-size-sm"
                                        onclick="window.location.href='cart.html'">
                                        Add To Cart
                                    </button>
                                </div>
                                <div class="product-footer-meta">
                                    <p><span>Category:</span>
                                        <a href="shop.html">Full Sweater</a>,
                                        <a href="shop.html">SweatShirt</a>,
                                        <a href="shop.html">Jacket</a>,
                                        <a href="shop.html">Blazer</a>
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
                                        <span>Description</span>
                                    </a>
                                    <a class="nav-link" id="nav-info-tab" data-toggle="tab" href="#nav-info" role="tab"
                                        aria-selected="true">
                                        <span>Additional Information</span>
                                    </a>
                                    <a class="nav-link" id="nav-reviews-tab" data-toggle="tab" href="#nav-reviews"
                                        role="tab" aria-selected="true">
                                        <span>Reviews(1)</span>
                                    </a>
                                </div>
                                <div class="tab-content" id="product-tabContent">
                                    <div class="tab-pane fade show active" id="nav-description" role="tabpanel"
                                        aria-labelledby="nav-description-tab">
                                        <div class="product-description">
                                            <p>Lorem ipsum dolor sit amet, consec do eiusmod tincididunt ut labore et
                                                dolore magna aliqua. Ut enim ad minim veniaLo ipsum dolor sit amet,
                                                consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla paExcepteur sint occaecat cupidatat non proident,
                                                sunt in culpa qui officia deserunt mollit anim id est laborum. iatis
                                                unde omnis iste natus error sit voluptatem accusantium </p>

                                            <p>Lorem ipsum dolor sit amet, consec do eiusmod tincididunt ut labore et
                                                dolore magna aliqua. Ut enim ad minim veniaLo ipsum dolor sit amet,
                                                consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                                exercitation ullamco.</p>

                                            <h5 class="product-description__heading">Characteristics :</h5>
                                            <ul>
                                                <li><i class="fa fa-circle"></i><span>Rsit amet, consectetur
                                                        adipisicing elit, sed do eiusmod tempor inc.</span></li>
                                                <li><i class="fa fa-circle"></i><span>sunt in culpa qui officia
                                                        deserunt mollit anim id est laborum. </span></li>
                                                <li><i class="fa fa-circle"></i><span>Lorem ipsum dolor sit amet,
                                                        consec do eiusmod tincididu. </span></li>
                                            </ul>

                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-info" role="tabpanel"
                                        aria-labelledby="nav-info-tab">
                                        <div class="table-content table-responsive">
                                            <table class="table shop_attributes">
                                                <tbody>
                                                    <tr>
                                                        <th>Weight</th>
                                                        <td>57 kg</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Dimensions</th>
                                                        <td>160 × 152 × 110 cm</td>
                                                    </tr>
                                                    <tr>
                                                        <th>Color</th>
                                                        <td>
                                                            <a href="shop.html">Black</a>,
                                                            <a href="shop.html">Gray</a>,
                                                            <a href="shop.html">Red</a>,
                                                            <a href="shop.html">Violet</a>,
                                                            <a href="shop.html">Yellow</a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-reviews" role="tabpanel"
                                        aria-labelledby="nav-reviews-tab">
                                        <div class="product-reviews">
                                            <h3 class="review__title">1 review for Black Blazer</h3>
                                            <ul class="review__list">
                                                <li class="review__item">
                                                    <div class="review__container">
                                                        <img src="${pageContext.request.contextPath}/client/shop/img/others/comment-1.jpg" alt="Review Avatar"
                                                            class="review__avatar">
                                                        <div class="review__text">
                                                            <div
                                                                class="d-flex flex-sm-row flex-column justify-content-between">
                                                                <div class="review__meta">
                                                                    <strong class="review__author">John Snow </strong>
                                                                    <span class="review__dash">-</span>
                                                                    <span class="review__published-date">November 20,
                                                                        2018</span>
                                                                </div>
                                                                <div class="product-rating">
                                                                    <div class="star-rating star-five">
                                                                        <span>Rated <strong class="rating">5.00</strong>
                                                                            out of 5</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <p class="review__description">Aliquam egestas libero ac
                                                                turpis pharetra, in vehicula lacus scelerisque.
                                                                Vestibulum ut sem laoreet, feugiat tellus at, hendrerit
                                                                arcu.</p>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="review-form-wrapper">
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <span class="reply-title">Add a review</span>
                                                        <form action="#" class="form pr--30">
                                                            <div class="form-notes mb--20">
                                                                <p>Your email address will not be published. Required
                                                                    fields are marked <span class="required">*</span>
                                                                </p>
                                                            </div>
                                                            <div class="form__group mb--10">
                                                                <label class="form__label d-block mb--10">Your Ratings</label>
                                                                <div class="rating">
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                    <span><i class="fa fa-star"></i></span>
                                                                </div>
                                                            </div>
                                                            <div class="form__group mb--10">
                                                                <label class="form__label d-block mb--10" for="email">Your
                                                                    Review<span class="required">*</span></label>
                                                                <textarea name="review" id="review"
                                                                    class="form__input form__input--textarea"></textarea>
                                                            </div>
                                                            <div class="form__group mb--20">
                                                                <label class="form__label d-block mb--10" for="name">Name<span
                                                                        class="required">*</span></label>
                                                                <input type="text" name="name" id="name"
                                                                    class="form__input">
                                                            </div>
                                                            <div class="form__group mb--20">
                                                                <label class="form__label d-block mb--10"
                                                                    for="email">Email<span
                                                                        class="required">*</span></label>
                                                                <input type="email" name="email" id="email"
                                                                    class="form__input">
                                                            </div>
                                                            <div class="form__group">
                                                                <div class="form-row">
                                                                    <div class="col-12">
                                                                        <input type="submit" value="Submit Now"
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
                                                    <a href="compare.html" class="action-btn">
                                                        <i class="fa fa-repeat"></i>
                                                        <span class="sr-only">Add To Compare</span>
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
                                                        <a href="product-details.html">Lexbaro Begadi</a>
                                                    </h3>
                                                    <div class="product__price">
                                                        <span class="money">132.00</span>
                                                        <span class="sign">$</span>
                                                    </div>
                                                </div>
                                                <div class="product__info--right">
                                                    <span class="product__rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </span>
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
                                                    <a href="wishlist.html" class="action-btn">
                                                        <i class="fa fa-repeat"></i>
                                                        <span class="sr-only">Add To Compare</span>
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
                                                        <a href="product-details.html">Lexbaro Begadi</a>
                                                    </h3>
                                                    <div class="product__price">
                                                        <span class="money">132.00</span>
                                                        <span class="sign">$</span>
                                                    </div>
                                                </div>
                                                <div class="product__info--right">
                                                    <span class="product__rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </span>
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
                                                    <a href="wishlist.html" class="action-btn">
                                                        <i class="fa fa-repeat"></i>
                                                        <span class="sr-only">Add To Compare</span>
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
                                                        <a href="product-details.html">Lexbaro Begadi</a>
                                                    </h3>
                                                    <div class="product__price">
                                                        <span class="money">132.00</span>
                                                        <span class="sign">$</span>
                                                    </div>
                                                </div>
                                                <div class="product__info--right">
                                                    <span class="product__rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </span>
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
                                                    <a href="wishlist.html" class="action-btn">
                                                        <i class="fa fa-repeat"></i>
                                                        <span class="sr-only">Add To Compare</span>
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
                                                        <a href="product-details.html">Lexbaro Begadi</a>
                                                    </h3>
                                                    <div class="product__price">
                                                        <span class="money">132.00</span>
                                                        <span class="sign">$</span>
                                                    </div>
                                                </div>
                                                <div class="product__info--right">
                                                    <span class="product__rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </span>
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

        <!-- Footer -->

        <!-- OffCanvas Menu Start -->
        <aside class="offcanvas-navigation" id="offcanvasnav">
            <div class="offcanvas-navigation__inner">
                <a href="" class="btn-close">
                    <i class="flaticon-cross"></i>
                    <span class="sr-only">Close Offcanvas Navigtion</span>
                </a>
                <div class="offcanvas-navigation__top">
                    <ul class="offcanvas-menu">
                        <li class="has-children">
                            <a href="#">
                                <span class="mm-text">Home</span>
                            </a>
                            <ul class="sub-menu">
                                <li class="has-children">
                                    <a href="index.html">
                                        <span class="mm-text">Home One</span>
                                    </a>
                                </li>
                                <li class="has-children">
                                    <a href="index-02.html">
                                        <span class="mm-text">Home Two</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="shop.html">
                                <span class="mm-text">New Arrivals</span>
                            </a>
                        </li>
                        <li class="has-children">
                            <a href="#">
                                <span class="mm-text">Shop</span>
                            </a>
                            <ul class="sub-menu">
                                <li class="has-children">
                                    <a href="#">
                                        <span class="overlay-menu__title">Shop Layout</span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="shop-fullwidth.html">
                                                <span class="mm-text">Full Width</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="mm-text">Left Sidebar</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop-right-sidebar.html">
                                                <span class="mm-text">Right Sidebar</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop-three-columns.html">
                                                <span class="mm-text">Three Columns</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop-four-columns.html">
                                                <span class="mm-text">Four Columns</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop-list.html">
                                                <span class="mm-text">Full Width</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop-list-sidebar.html">
                                                <span class="mm-text">Left Sidebar</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop-list-right-sidebar.html">
                                                <span class="mm-text">Right Sidebar</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="has-children">
                                    <a href="#">
                                        <span class="overlay-menu__title">Single Product</span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="product-details.html">
                                                <span class="mm-text">Tab Style 1</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-details-tab-style-2.html">
                                                <span class="mm-text">Tab Style 2</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-details-tab-style-3.html">
                                                <span class="mm-text">Tab Style 3</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-details-gallery-left.html">
                                                <span class="mm-text">Gallery Left</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-details-gallery-right.html">
                                                <span class="mm-text">Gallery Right</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-details-sticky-left.html">
                                                <span class="mm-text">Sticky Left</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-details-sticky-right.html">
                                                <span class="mm-text">Sticky Right</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-details-slider-box.html">
                                                <span class="mm-text">Slider Box</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-details-slider-full-width.html">
                                                <span class="mm-text">Slider Box Full Width</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-details-affiliate.html">
                                                <span class="mm-text">Affiliate Proudct</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-details-variable.html">
                                                <span class="mm-text">Variable Proudct</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-details-group.html">
                                                <span class="mm-text">Group Product</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="has-children">
                                    <a href="#">
                                        <span class="overlay-menu__title">Shop Pages</span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="my-account.html">
                                                <span class="mm-text">My Account</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="cart.html">
                                                <span class="mm-text">Shopping Cart</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="checkout.html">
                                                <span class="mm-text">Check Out</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="wishlist.html">
                                                <span class="mm-text">Wishlist</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="order-tracking.html">
                                                <span class="mm-text">Order tracking</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="compare.html">
                                                <span class="mm-text">compare</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="has-children">
                            <a href="#">
                                <span class="mm-text">Pages</span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="my-account.html">
                                        <span class="mm-text">My Account</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="checkout.html">
                                        <span class="mm-text">Checkout</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="cart.html">
                                        <span class="mm-text">Cart</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="compare.html">
                                        <span class="mm-text">Compare</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="order-tracking.html">
                                        <span class="mm-text">Track Order</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="wishlist.html">
                                        <span class="mm-text">Wishlist</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="contact-us.html">
                                <span class="mm-text">Contact Us</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </aside>
        <!-- OffCanvas Menu End -->

        <!-- Mini Cart Start -->
        <aside class="mini-cart" id="miniCart">
            <div class="mini-cart-wrapper">
                <div class="mini-cart__close">
                    <a href="#" class="btn-close"><i class="flaticon-cross"></i></a>
                </div>
                <div class="mini-cart-inner">
                    <h3 class="mini-cart__heading mb--45">Shopping Cart</h3>
                    <div class="mini-cart__content">
                        <ul class="mini-cart__list">
                            <li class="mini-cart__product">
                                <a href="#" class="mini-cart__product-remove">
                                    <i class="flaticon-cross"></i>
                                </a>
                                <div class="mini-cart__product-image">
                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-11-90x90.jpg" alt="products">
                                </div>
                                <div class="mini-cart__product-content">
                                    <a class="mini-cart__product-title" href="product-details.html">Lexbaro Begadi</a>
                                    <span class="mini-cart__product-quantity">1 x $49.00</span>
                                </div>
                            </li>
                            <li class="mini-cart__product">
                                <a href="#" class="mini-cart__product-remove">
                                    <i class="flaticon-cross"></i>
                                </a>
                                <div class="mini-cart__product-image">
                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-12-90x90.jpg" alt="products">
                                </div>
                                <div class="mini-cart__product-content">
                                    <a class="mini-cart__product-title" href="product-details.html">Lexbaro Begadi</a>
                                    <span class="mini-cart__product-quantity">1 x $49.00</span>
                                </div>
                            </li>
                            <li class="mini-cart__product">
                                <a href="#" class="mini-cart__product-remove">
                                    <i class="flaticon-cross"></i>
                                </a>
                                <div class="mini-cart__product-image">
                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-13-90x90.jpg" alt="products">
                                </div>
                                <div class="mini-cart__product-content">
                                    <a class="mini-cart__product-title" href="product-details.html">Lexbaro Begadi</a>
                                    <span class="mini-cart__product-quantity">1 x $49.00</span>
                                </div>
                            </li>
                        </ul>
                        <div class="mini-cart__total">
                            <span>Subtotal</span>
                            <span class="ammount">$98.00</span>
                        </div>
                        <div class="mini-cart__buttons">
                            <a href="cart.html" class="btn btn-fullwidth btn-bg-primary mb--20">View Cart</a>
                            <a href="checkout.html" class="btn btn-fullwidth btn-bg-primary">Checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </aside>
        <!-- Mini Cart End -->

        <!-- Qicuk View Modal Start -->
        <div class="modal fade product-modal" id="productModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true"><i class="flaticon-cross"></i></span>
                        </button>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="element-carousel slick-vertical-center" data-slick-options='{
                                    "slidesToShow": 1,
                                    "slidesToScroll": 1,
                                    "arrows": true,
                                    "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-double-left" },
                                    "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-double-right" }
                                }'>
                                    <div class="item">
                                        <figure class="product-gallery__image">
                                            <img src="${pageContext.request.contextPath}/client/shop/img/products/product-03-270x300.jpg" alt="Product">
                                            <span class="product-badge sale">Sale</span>
                                        </figure>
                                    </div>
                                    <div class="item">
                                        <figure class="product-gallery__image">
                                            <img src="${pageContext.request.contextPath}/client/shop/img/products/product-04-270x300.jpg" alt="Product">
                                            <span class="product-badge sale">Sale</span>
                                        </figure>
                                    </div>
                                    <div class="item">
                                        <figure class="product-gallery__image">
                                            <img src="${pageContext.request.contextPath}/client/shop/img/products/product-05-270x300.jpg" alt="Product">
                                            <span class="product-badge sale">Sale</span>
                                        </figure>
                                    </div>
                                    <div class="item">
                                        <figure class="product-gallery__image">
                                            <img src="${pageContext.request.contextPath}/client/shop/img/products/product-06-270x300.jpg" alt="Product">
                                            <span class="product-badge sale">Sale</span>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="modal-box product-summary">
                                    <div class="product-navigation text-right mb--20">
                                        <a href="#" class="prev"><i class="fa fa-angle-double-left"></i></a>
                                        <a href="#" class="next"><i class="fa fa-angle-double-right"></i></a>
                                    </div>
                                    <div class="product-rating d-flex mb--20">
                                        <div class="star-rating star-four">
                                            <span>Rated <strong class="rating">5.00</strong> out of 5</span>
                                        </div>
                                    </div>
                                    <h3 class="product-title mb--20">Golden Easy Spot Chair.</h3>
                                    <p class="product-short-description mb--20">Donec accumsan auctor iaculis. Sed
                                        suscipit
                                        arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo
                                        eget,
                                        sodales orci. Aliquam egestas libero ac turpis pharetra, in vehicula lacus
                                        scelerisque. Vestibulum ut sem laoreet, feugiat tellus at, hendrerit arcu.</p>
                                    <div class="product-price-wrapper mb--25">
                                        <span class="money">$200.00</span>
                                        <span class="price-separator">-</span>
                                        <span class="money">$400.00</span>
                                    </div>
                                    <form action="#" class="variation-form mb--20">
                                        <div class="product-size-variations d-flex align-items-center mb--15">
                                            <p class="variation-label">Size:</p>
                                            <div class="product-size-variation variation-wrapper">
                                                <div class="variation">
                                                    <a class="product-size-variation-btn selected" data-toggle="tooltip"
                                                        data-placement="top" title="S">
                                                        <span class="product-size-variation-label">S</span>
                                                    </a>
                                                </div>
                                                <div class="variation">
                                                    <a class="product-size-variation-btn" data-toggle="tooltip"
                                                        data-placement="top" title="M">
                                                        <span class="product-size-variation-label">M</span>
                                                    </a>
                                                </div>
                                                <div class="variation">
                                                    <a class="product-size-variation-btn" data-toggle="tooltip"
                                                        data-placement="top" title="L">
                                                        <span class="product-size-variation-label">L</span>
                                                    </a>
                                                </div>
                                                <div class="variation">
                                                    <a class="product-size-variation-btn" data-toggle="tooltip"
                                                        data-placement="top" title="XL">
                                                        <span class="product-size-variation-label">XL</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="" class="reset_variations">Clear</a>
                                    </form>
                                    <div
                                        class="product-action d-flex flex-sm-row align-items-sm-center flex-column align-items-start mb--30">
                                        <div
                                            class="quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30">
                                            <label class="quantity-label" for="qty">Quantity:</label>
                                            <div class="quantity">
                                                <input type="number" class="quantity-input" name="qty" id="qty"
                                                    value="1" min="1">
                                            </div>
                                        </div>
                                        <button type="button" class="btn btn-shape-square btn-size-sm"
                                            onclick="window.location.href='cart.html'">
                                            Add To Cart
                                        </button>
                                    </div>
                                    <div class="product-footer-meta">
                                        <p><span>Category:</span>
                                            <a href="shop.html">Full Sweater</a>,
                                            <a href="shop.html">SweatShirt</a>,
                                            <a href="shop.html">Jacket</a>,
                                            <a href="shop.html">Blazer</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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