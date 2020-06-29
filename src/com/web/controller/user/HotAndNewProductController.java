package com.web.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.biz.ProductBiz;
import com.web.biz.impl.ProductBizImpl;
import com.web.entity.Product;

/**
 * Servlet implementation class HotAndNewProductController
 */
@WebServlet("/index")
public class HotAndNewProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotAndNewProductController() {
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
		// 得到热卖商品
		ProductBiz productbiz = new ProductBizImpl();
		List<Product> hot_list = productbiz.getHotLuxury();
		// 得到新品
		List<Product> new_list = productbiz.findTheNewLuxury();
		
		// 定位向index.jsp主页面
		request.setAttribute("hot_list", hot_list);
		request.setAttribute("new_list", new_list);
		
		request.getRequestDispatcher("/client/index.jsp").forward(request, response);
	}

}
