package com.web.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.biz.FavorBiz;
import com.web.biz.impl.FavorBizImpl;
import com.web.entity.Consumer;
import com.web.entity.Favor;

/**
 * Servlet implementation class FindFavorByConsumer
 */
@WebServlet("/FindFavorByConsumer")
public class FindFavorByConsumer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindFavorByConsumer() {
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
		
		//实例化业务逻辑层，查找愿望
		FavorBiz favorBiz = new FavorBizImpl();
		List<Favor> list = favorBiz.findFavorByConsumer(consumer);
		//把订单列表数据信息传递到前台
		req.setAttribute("favorList", list);
		
		//转发跳转页面
		req.getRequestDispatcher("/client/").forward(req, resp);
	}

}
