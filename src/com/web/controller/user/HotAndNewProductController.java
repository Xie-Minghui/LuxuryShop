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
@WebServlet("/HotAndNewProductController")
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
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 得到热卖商品
		ProductBiz productbiz = new ProductBizImpl();
		List<Product> hot_list = productbiz.getHotLuxury();
		// 得到新品
		
		// 定位向index.jsp主页面
		
	}

}
