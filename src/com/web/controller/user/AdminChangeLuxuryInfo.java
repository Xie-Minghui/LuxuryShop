package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.web.biz.ProductBiz;
import com.web.biz.impl.ProductBizImpl;
import com.web.entity.Product;

/**
 * Servlet implementation class AdminChangeLuxuryInfo
 */
@WebServlet("/AdminChangeLuxuryInfo")
public class AdminChangeLuxuryInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminChangeLuxuryInfo() {
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

		//实例化业务逻辑层
		ProductBiz productBiz = new ProductBizImpl();
		
		//实例化商品对象
		Product luxury = new Product();
		

	    try {
	    	//把表单中的参数赋值给用户对象
			BeanUtils.populate(luxury, request.getParameterMap());
			Integer id = Integer.parseInt(request.getParameter("id"));
			luxury.setLID(id);
			System.out.println(luxury.getLID());
			System.out.println(luxury.getLNAME());
			//调用业务逻辑层的修改方法
			boolean flag = productBiz.changeLuxuryInfo(luxury);
			
			if(flag){//如果注册成功
				response.sendRedirect(request.getContextPath()+"/AdminFindProductById?id="+luxury.getLID());
			}else{
				response.sendRedirect(request.getContextPath()+"/AdminFindProductById?id="+luxury.getLID());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
