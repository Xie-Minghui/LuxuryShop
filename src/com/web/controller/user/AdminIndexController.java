package com.web.controller.user;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.biz.ConsumerBiz;
import com.web.biz.OrderBiz;
import com.web.biz.ProductBiz;
import com.web.biz.impl.ConsumerBizImpl;
import com.web.biz.impl.OrderBizImpl;
import com.web.biz.impl.ProductBizImpl;

/**
 * Servlet implementation class AdminIndexController
 */
@WebServlet("/AdminIndexController")
public class AdminIndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminIndexController() {
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
		//调用业务逻辑层的查询方法
		ProductBiz productBiz = new ProductBizImpl();
		OrderBiz orderBiz = new OrderBizImpl();
		ConsumerBiz consumerBiz = new ConsumerBizImpl();
		Integer countProduct = productBiz.countAllProduct();
		BigDecimal totalSales = orderBiz.totalSales();
		Integer countOrder = orderBiz.countAllOrder();
		Integer countConsumer = consumerBiz.countAllConsumer();
		
		//把数据传到界面中
		request.setAttribute("cp", countProduct);
		request.setAttribute("ts", totalSales);
		request.setAttribute("co", countOrder);
		request.setAttribute("cc", countConsumer);
		
		//转发
		request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
	}

}
