<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
                                    <span class="product-badge sale">图片展示</span>
                                </figure>
                            </div>
                            <div class="item">
                                <figure class="product-gallery__image">
                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-04-270x300.jpg" alt="Product">
                                    <span class="product-badge sale">图片展示</span>
                                </figure>
                            </div>
                            <div class="item">
                                <figure class="product-gallery__image">
                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-05-270x300.jpg" alt="Product">
                                    <span class="product-badge sale">图片展示</span>
                                </figure>
                            </div>
                            <div class="item">
                                <figure class="product-gallery__image">
                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-06-270x300.jpg" alt="Product">
                                    <span class="product-badge sale">图片展示</span>
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
                            <h3 class="product-title mb--20">商品DFDJSKH</h3>
                            <p class="product-short-description mb--20">商品描述商品描述商品描述商品描述商品描述商品描述商品描述商品描述</p>
                            <div class="product-price-wrapper mb--25">
                                <span class="money">￥200.00</span>
                                <span class="price-separator">-</span>
                                <span class="money">￥400.00</span>
                            </div>
                            <div
                                class="product-action d-flex flex-sm-row align-items-sm-center flex-column align-items-start mb--30">
                                <div
                                    class="quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30">
                                    <label class="quantity-label" for="qty">数量:</label>
                                    <div class="quantity">
                                        <input type="number" class="quantity-input" name="qty" id="qty"
                                            value="1" min="1">
                                    </div>
                                </div>
                                <button type="button" class="btn btn-shape-square btn-size-sm"
                                    onclick="window.location.href='cart.html'">加入购物车</button>
                            </div>
                            <div class="product-footer-meta">
                                <p><span>分类:</span>
                                    <a href="shop.html">类型A</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>