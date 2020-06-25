package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.biz.OrderBiz;
import com.web.biz.OrderItemBiz;
import com.web.biz.impl.OrderBizImpl;
import com.web.biz.impl.OrderItemBizImpl;
import com.web.entity.Order;
import com.web.entity.OrderItem;
import com.web.entity.Product;

/**
 * Servlet implementation class OrderCommentController
 */
@WebServlet("/OrderCommentController")
public class OrderCommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderCommentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取评论
		String comment = request.getParameter("comment");

		//获取session对象
		HttpSession session = request.getSession();
		// 获取订单
		Order order = (Order) session.getAttribute("order");
		// 订单已收货
		order.setSTATE(2);

		//更新item 更新order 
		OrderBiz orderBiz = new OrderBizImpl();
		OrderItemBiz orderItemBiz = new OrderItemBizImpl();
		orderBiz.changeState(order);
		
		// 将评论赋值给每一个orderitem
		for (OrderItem item : order.getOrderItems()) {
			item.setCOMMENT(comment);
			orderItemBiz.addComment(item);
		}
		
		// 撤销删除session中order对象
		session.removeAttribute("order");

		// 返回首页
		response.sendRedirect(request.getContextPath()+"/client/index.jsp");
	}

}
