package com.web.controller.user;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.biz.ProductBiz;
import com.web.biz.impl.ProductBizImpl;
import com.web.entity.Product;

/**
 * Servlet implementation class addCartController
 */
@WebServlet("/addCartController")
public class addCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addCartController() {
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
		// 1.得到商品id，商品数量
		int id = Integer.parseInt(request.getParameter("id"));
		int pnum = Integer.parseInt(request.getParameter("count"));

		// 2.调用service层方法，根据id查找商品
		ProductBiz pb = new ProductBizImpl();
		try {
			Product p = pb.findProductById(id);
			//3.将商品添加到购物车
			//3.1获得session对象
			HttpSession session = request.getSession();
			//3.2从session中获取购物车对象
			Map<Product, Integer> cart = (Map<Product, Integer>)session.getAttribute("cart");
			//3.3如果购物车为null,说明没有商品存储在购物车中，创建出购物车
			if (cart == null) {
				cart = new HashMap<Product, Integer>();
			}
			//3.4向购物车中添加商品，将商品的数量增加count

			// put()方法简单介绍：当在链表中已经存在相同的hash和key时，覆盖原值,并将原值返回
			Integer count = cart.put(p, pnum);

			//3.5如果商品数量不为空，则商品数量+1，否则添加新的商品信息
			if (count != null) {
				cart.put(p, count + pnum);
			}
			session.setAttribute("cart", cart);
			response.sendRedirect(request.getContextPath()+"/FindProductByIdController?id="+id);
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
