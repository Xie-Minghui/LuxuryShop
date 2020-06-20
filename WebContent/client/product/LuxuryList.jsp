<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Luxury List</title>
</head>
<body>
   
   <jsp:include page="../menu_search.jsp"></jsp:include>
   
    <h3 align="center">book</h3>
    <table border="1" width="70%" align="center">
        <table cellspacing="0" class="listcontent">
        	<tr>
        		<td>
        			<h1>Luxury List</h1>
        			<hr/>
						<h1>${bean.category }</h1> 共${bean.totalCount }种商品
						
						<table cellspacing="0">
							<tr>
								<c:forEach items="${bean.luxuryList }" var="p">
									<td>
										<div>
											<p>
												<a href="${pageContext.request.contextPath}/findProductById?id=${p.LID}">
													<img src="${pageContext.request.contextPath}/${p.IMAGE}" width="115" height="129" border="0" /> 
												</a>
											</p>
										</div>
										<div>
											<a href="${pageContext.request.contextPath}/findProductById?id=${p.LID}">书名： ${p.LNAME }<br/>售价：￥${p.PRICE }</a>
										</div>
									</td>
								</c:forEach>
							</tr>
						</table>
						
						<div>
							<ul>
								<%--上一页 --%>
								<c:if test="${bean.currentPage !=1 }">
									<li >
									<a href="${pageContext.request.contextPath}/showProductByPage?currentPage=${bean.currentPage-1 }&category=${bean.category}">上一页</a>
									</li>
								</c:if>
								<c:if test="${bean.currentPage == 1 }">
								<li >上一页</li>
								</c:if>
								<%--上一页 --%>
								
								<%--页码数 --%>
								<c:forEach begin="1" end="${bean.totalPage }" var="pageNum">
									<c:if test="${pageNum == bean.currentPage }">
										<li class="currentpage">${pageNum}</li>
									</c:if>
									<c:if test="${pageNum != bean.currentPage }">
										<li><a href="${pageContext.request.contextPath}/showProductByPage?currentPage=${pageNum}&category=${bean.category}">${pageNum}</a></li>
									</c:if>
								</c:forEach>
								<%--页码数 --%>
										
								<%--下一页 --%>
								<c:if test="${bean.currentPage != bean.totalPage && bean.totalPage!=0}">
									<li>
									<a href="${pageContext.request.contextPath}/showProductByPage?currentPage=${bean.currentPage+1 }&category=${bean.category}">下一页</a>
									</li>
								</c:if>
								<c:if test="${bean.currentPage == bean.totalPage || bean.totalPage==0}">
									<li >下一页</li>
								</c:if>
								<%--下一页 --%>
									
							</ul>
						</div>
        			<hr/>
        		</td>
        	</tr>
        </table>
    </table>
</body>
</html>