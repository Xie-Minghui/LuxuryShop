package com.web.controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.biz.OrderBiz;
import com.web.biz.impl.OrderBizImpl;

/**
 * Servlet implementation class AdminDelive
 */
@WebServlet("/AdminDelive")
public class AdminDelive extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDelive() {
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
		//获取从界面上传过来的oid
		String oid = req.getParameter("oid");
		
		//调用业务逻辑层的查询方法
		OrderBiz orderBiz = new OrderBizImpl();
		
		orderBiz.deliverById(oid);
		
		//转发
		req.getRequestDispatcher("/admin/process.jsp").forward(req, resp);
	}

}
