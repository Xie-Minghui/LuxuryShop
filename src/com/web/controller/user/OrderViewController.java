package com.web.controller.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
import com.web.entity.Consumer;
import com.web.entity.Order;
import com.web.entity.OrderItem;

/**
 * Servlet implementation class OrderViewController
 */
@WebServlet("/OrderViewController")
public class OrderViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderViewController() {
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
		HttpSession session = request.getSession();
		
		// 得到订单id，订单状态
		String oid = request.getParameter("oid");
		int state = Integer.parseInt(request.getParameter("state"));
		
		
		//调用业务逻辑层的查询方法
		OrderBiz orderBiz = new OrderBizImpl();
		Order order = orderBiz.findOrderById(oid);
		
		// 订单条目
		OrderItemBiz orderItemBiz = new OrderItemBizImpl();
		List<OrderItem> orderItems = orderItemBiz.findOrderItemByOrder(order);
		System.out.println(orderItems.size());
		order.setOrderItems(orderItems);
		
		// 订单用户
		order.setConsumer((Consumer)session.getAttribute("consumer"));
		
		//把数据传到session中
		session.setAttribute("order", order);
		
		// 根据状态前往不同页面
		switch(state){
			case 0:
				response.sendRedirect(request.getContextPath()+"/client/checkout.jsp");
				break;
			case 1:
				response.sendRedirect(request.getContextPath()+"/client/orderdetails.jsp");
				break;
			case 2:
				response.sendRedirect(request.getContextPath()+"/client/orderdetails.jsp");
				break;
			case 3:
				response.sendRedirect(request.getContextPath()+"/client/waitcommentorder.jsp");
				break;
			case 4:
				response.sendRedirect(request.getContextPath()+"/client/orderdetails.jsp");
				break;
			default:
				response.sendRedirect(request.getContextPath()+"/client/waitcommentorder.jsp");
				break;
		};
	}

}
