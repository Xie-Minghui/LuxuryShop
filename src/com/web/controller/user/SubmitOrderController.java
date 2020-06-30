package com.web.controller.user;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.biz.OrderBiz;
import com.web.biz.impl.OrderBizImpl;
import com.web.entity.Order;
import com.web.entity.Product;

/**
 * Servlet implementation class SubmitOrderController
 */
@WebServlet("/SubmitOrderController")
public class SubmitOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitOrderController() {
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
		Order order = (Order) session.getAttribute("order");//获取购物车信息
		
		// 获取订单备注，支付方式
		String remark = request.getParameter("remark");
		String pay = request.getParameter("pay");


		// 更改订单备注，支付方式
		order.setREMARK(remark);
		order.setPAY(pay);


		// 订单已支付未发货
		order.setSTATE(1);
		
		//实例化订单的业务逻辑层
		OrderBiz orderBiz = new OrderBizImpl();
		boolean flag = orderBiz.changeState(order);

		order = orderBiz.findOrderById(order.getOID());
		
		//如果添加成功，则跳转到添加订单成功页面
		if(flag){
			session.setAttribute("order", order);
			response.sendRedirect(request.getContextPath()+"/client/orderconfirm.jsp");
		}else{
			response.sendRedirect(request.getContextPath()+"/client/checkout.jsp");
		}
	}

}
