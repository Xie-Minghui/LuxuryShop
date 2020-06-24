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
 * Servlet implementation class ChangeCartController
 */
@WebServlet("/ChangeCartController")
public class ChangeCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeCartController() {
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
		//获取商品的数量
		Integer count = 0;
		String _count = request.getParameter("count");
		
		//判断是否为空
		if(_count != null){
			//把字符串转换为整形
			count = Integer.parseInt(_count);
		}

		//获得session对象
		HttpSession session = request.getSession();
		
		//获取购物车信息
		Map<Product, Integer> cart = (Map<Product, Integer>) session.getAttribute("cart");

		// 判断是否为清空购物车
		if(count < 0) {
			cart.clear();
			//跳转到购物车页面
			response.sendRedirect(request.getContextPath()+"/client/cart.jsp");
			return;
		}

		//获取商品的id
		int id = Integer.parseInt(request.getParameter("id"));
		
		//根据id查询商品对象
		ProductBiz productBiz = new ProductBizImpl();
		Product product = productBiz.findProductById(id);
		
		if(count !=0 ){
			//判断购物车中是否存在商品
		    if(cart.containsKey(product)){
		    	//把商品对象移除
		    	cart.remove(product);
		    	
		    	//重新放置对象   count:数量
		    	cart.put(product, count);
		    }else{
		    	cart.put(product, count);
		    }
		}else{
			//把商品对象移除
	    	cart.remove(product);
		}
		
		

		//跳转到购物车页面
		response.sendRedirect(request.getContextPath()+"/client/cart.jsp");
	}

}
