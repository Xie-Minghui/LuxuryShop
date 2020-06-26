package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.web.biz.FavorBiz;
import com.web.biz.impl.FavorBizImpl;
import com.web.entity.Consumer;

/**
 * Servlet implementation class DeleFavorController
 */
@WebServlet("/DeleFavorController")
public class DeleFavorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleFavorController() {
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
		Integer CID = consumer.getCID();
		
		//获取表单的信息
		Integer LID = Integer.parseInt(req.getParameter("LID"));
		
		//实例化业务逻辑层，删除愿望
		FavorBiz favorBiz = new FavorBizImpl();
		favorBiz.deleFavorByCIDAndLID(CID, LID);
		
		resp.sendRedirect(req.getContextPath()+"/FindFavorByConsumer");
	}

}
