package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.web.biz.FavorBiz;
import com.web.biz.ProductBiz;
import com.web.biz.impl.FavorBizImpl;
import com.web.biz.impl.ProductBizImpl;
import com.web.entity.Consumer;
import com.web.entity.Favor;
import com.web.entity.Product;

/**
 * Servlet implementation class AddFavorController
 */
@WebServlet("/AddFavorController")
public class AddFavorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFavorController() {
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
		//获取session对象
		HttpSession session = req.getSession();
		
		//获取用户的信息
		Consumer consumer = (Consumer) session.getAttribute("consumer");
		
		//获取表单的信息，封装到愿望单对象中
		Favor favor = new Favor();
		
		// 获取参数
		favor.setCID(consumer.getCID());
		favor.setConsumer(consumer);
		int lid = Integer.parseInt(req.getParameter("lid"));
		favor.setLID(lid);
		
		//实例化业务逻辑层，添加愿望
		FavorBiz favorBiz = new FavorBizImpl();
		favorBiz.addFavor(favor);
		resp.sendRedirect(req.getContextPath()+"/FindFavorByConsumer");
	}

}
