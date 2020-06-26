package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.biz.OrderBiz;
import com.web.biz.impl.OrderBizImpl;
import com.web.entity.Order;

/**
 * Servlet implementation class ConfirmReceiptController
 */
@WebServlet("/ConfirmReceiptController")
public class ConfirmReceiptController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmReceiptController() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取session对象
		HttpSession session = request.getSession();
		// 获取订单实体，购物车实体
		Order order = (Order) session.getAttribute("order");

		// 已收货未评价
		order.setSTATE(3);

		//实例化订单的业务逻辑层
		OrderBiz orderBiz = new OrderBizImpl();
		boolean flag = orderBiz.changeState(order);

		//如果添加成功，则跳转到添加订单成功页面
		if(flag){
			session.setAttribute("order", order);
			response.sendRedirect(request.getContextPath()+"/client/waitcommentorder.jsp");
		}else{
			response.sendRedirect(request.getContextPath()+"/client/orderdetails.jsp");
		}
	}

}
