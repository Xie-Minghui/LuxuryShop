<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<aside id="sidebar-left" class="sidebar-left">
				
					<div class="sidebar-header">
						<div class="sidebar-title">
							导航
						</div>
						<div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
							<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
						</div>
					</div>
				
					<div class="nano">
						<div class="nano-content">
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-main">
									<li class="nav-active">
										<a href="${pageContext.request.contextPath}/AdminIndexController">
											<i class="fa fa-home" aria-hidden="true"></i>
											<span>主面板</span>
										</a>
									</li>

									<li class="nav-parent">
										<a>
											<i class="fa fa-list-alt" aria-hidden="true"></i>
											<span>商品</span>
										</a>
										<ul class="nav nav-children">
											<li>
												<a href="${pageContext.request.contextPath}/admin/publish.jsp">
													 发布
												</a>
											</li>
											<li>
												<a href="${pageContext.request.contextPath}/AdminFindAllProduct">
													 查找/修改/删除
												</a>
											</li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-table" aria-hidden="true"></i>
											<span>订单</span>
										</a>
										<ul class="nav nav-children">
											<li>
												<a href="${pageContext.request.contextPath}/AdminFindOrderByState?state=1">
													 处理
												</a>
											</li>
											<li>
												<a href="${pageContext.request.contextPath}/AdminFindDeliveredOrder">
													 查看
												</a>
											</li>
										</ul>
									</li>

								</ul>
							</nav>
						</div>
				
					</div>
				
				</aside>