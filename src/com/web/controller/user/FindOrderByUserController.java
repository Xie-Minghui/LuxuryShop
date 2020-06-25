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
import com.web.biz.impl.OrderBizImpl;
import com.web.entity.Consumer;
import com.web.entity.Order;

/**
 * 我的订单
 */
@WebServlet("/FindOrderByUserController")
public class FindOrderByUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindOrderByUserController() {
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
		//获取用户的信息
		HttpSession session = req.getSession();
		Consumer consumer = (Consumer) session.getAttribute("consumer");
		
		//根据用户的信息查询订单信息
		OrderBiz orderBiz = new OrderBizImpl();
		
		List<Order> list = orderBiz.findOrderByConsumer(consumer);
		
		// 订单状态
		List<String> state_list = new ArrayList<String>();
		for(Order order : list) {
			switch(order.getSTATE()){
				case 0:
					state_list.add("未支付");
					break;
				case 1:
					state_list.add("已支付");
					break;
				case 2:
					state_list.add("已评论");
					break;
				default:
					state_list.add("未支付");
					break;
			};
		}
		//把订单列表数据信息传递到前台
		req.setAttribute("orderList", list);
		req.setAttribute("stateList", state_list);

		//转发跳转页面
		req.getRequestDispatcher("/client/account.jsp").forward(req, resp);
	}

}
