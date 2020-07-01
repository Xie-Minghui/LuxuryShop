package com.web.controller.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.biz.OrderBiz;
import com.web.biz.impl.OrderBizImpl;
import com.web.entity.Order;

/**
 * Servlet implementation class AdminFindDeliveredOrder
 */
@WebServlet("/AdminFindDeliveredOrder")
public class AdminFindDeliveredOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFindDeliveredOrder() {
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
		//调用业务逻辑层的查询方法
		OrderBiz orderBiz = new OrderBizImpl();
		
		List<Order> orderList = orderBiz.findDeliveredOrder();
		
		// 订单状态
		List<String> state_list = new ArrayList<String>();
		for(Order order : orderList) {
			switch(order.getSTATE()){
				case 0:
					state_list.add("未支付");
					break;
				case 1:
					state_list.add("未发货");
					break;
				case 2:
					state_list.add("等待收货");
					break;
				case 3:
					state_list.add("已收货未评价");
					break;
				case 4:
					state_list.add("已完成");
					break;
				default:
					state_list.add("未支付");
					break;
			};
		}
		
		
		
		//把数据传到界面中
		req.setAttribute("oList", orderList);
		req.setAttribute("orderState", state_list);
		
		//转发
		req.getRequestDispatcher("/admin/sentprocess.jsp").forward(req, resp);
	}

}
