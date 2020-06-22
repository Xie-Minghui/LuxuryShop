package com.web.controller.user;

import java.io.IOException;
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
 * Servlet implementation class FindOrderByIdController
 */
@WebServlet("/FindOrderByIdController")
public class FindOrderByIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindOrderByIdController() {
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
		
		List<Order> orderlist = orderBiz.findOrderById(id);
		
		//把数据传到界面中
		req.setAttribute("orderList", orderlist);
		
		//转发
		req.getRequestDispatcher("/client/order/orderInfo.jsp").forward(req, resp);
	}

}
