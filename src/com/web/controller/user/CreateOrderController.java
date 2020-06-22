package com.web.controller.user;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.web.biz.OrderBiz;
import com.web.biz.impl.OrderBizImpl;
import com.web.entity.Consumer;
import com.web.entity.Order;
import com.web.entity.Product;
import com.web.util.IdUtils;

/**
 * Servlet implementation class CreateOrderController
 */
@WebServlet("/CreateOrderController")
public class CreateOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateOrderController() {
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
		//实例化订单的业务逻辑层
		OrderBiz orderBiz = new OrderBizImpl();
		
		//获取session对象
		HttpSession session = req.getSession();
		
		//获取购物车信息
		Map<Product, Integer> cart = (Map<Product, Integer>) session.getAttribute("cart");
	
	    //获取用户的信息
		Consumer consumer = (Consumer) session.getAttribute("consumer");
		
		
		
		//获取表单的信息，封装到订单对象中
		Order order = new Order();
		try {
			BeanUtils.populate(order, req.getParameterMap());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//设置订单id
		order.setOID(IdUtils.getUUID());
		
		//设置订单的用户信息
		order.setConsumer(consumer);
		order.setCID(consumer.getCID());

		//设置订单的商品信息并添加订单
		boolean success = true;
		try {
			for (Product p : cart.keySet()) {
				order.setProduct(p);
				order.setLID(p.getLID());
				success = orderBiz.addOrder(order);
				if (!success) {
					break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			success = false;
		}
		
		//如果添加成功，则跳转到添加订单成功页面
		if(success){
			resp.sendRedirect(req.getContextPath()+"/client/order/createOrderSuccess.jsp");
		}else{
			resp.sendRedirect(req.getContextPath()+"/client/order/order.jsp");
		}
	}

}
