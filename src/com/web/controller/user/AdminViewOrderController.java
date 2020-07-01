package com.web.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.biz.OrderBiz;
import com.web.biz.OrderItemBiz;
import com.web.biz.impl.OrderBizImpl;
import com.web.biz.impl.OrderItemBizImpl;
import com.web.entity.Order;
import com.web.entity.OrderItem;

/**
 * Servlet implementation class AdminViewOrderController
 */
@WebServlet("/AdminViewOrderController")
public class AdminViewOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminViewOrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//获取从界面上传过来的id
		String id = req.getParameter("id");
		//调用业务逻辑层的查询方法
		OrderBiz orderBiz = new OrderBizImpl();
		Order order = orderBiz.findOrderById(id);
		
		// 订单条目
		OrderItemBiz orderItemBiz = new OrderItemBizImpl();
		List<OrderItem> orderItems = orderItemBiz.findOrderItemByOrder(order);
		order.setOrderItems(orderItems);
		
		// 状态
		String state = new String();
		int state_num = order.getSTATE();
		switch(state_num){
			case 0:
				state="未支付";
				break;
			case 1:
				state="未发货";
				break;
			case 2:
				state="等待收货";
				break;
			case 3:
				state="已收货未评价";
				break;
			case 4:
				state="已完成";
				break;
			default:
				state="未支付";
				break;
		}
		
		//把数据传到界面中
		req.setAttribute("admin_order", order);
		req.setAttribute("state", state);

		//转发
		req.getRequestDispatcher("/admin/orderdetails.jsp").forward(req, resp);
	}

}
