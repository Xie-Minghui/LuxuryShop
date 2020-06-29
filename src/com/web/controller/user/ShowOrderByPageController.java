package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.biz.OrderBiz;
import com.web.biz.impl.OrderBizImpl;
import com.web.util.OrderPageBean;

/**
 * Servlet implementation class ShowOrderByPageController
 */
@WebServlet("/ShowOrderByPageController")
public class ShowOrderByPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowOrderByPageController() {
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
		//实例化商品的业务逻辑层
		OrderBiz orderBiz = new OrderBizImpl();
		
		//定义当前页码，默认为1
		Integer currentPage = 1;
		String _currentPage = req.getParameter("currentPage");
		
		//判断传过来的页码数是否为空
		if(_currentPage != null){
			
			//把字符串转换为整形
			currentPage = Integer.parseInt(_currentPage);
			
		}
		
		//定义每页显示的条数默认为9
		Integer currentCount = 9;
		String _currentCount = req.getParameter("currentCount");
		
		//判断传过来的每页显示的条数是否为空
		if(_currentCount != null){
			
			//把字符串转换为整形
			currentCount = Integer.parseInt(_currentCount);
		}
		
		//定义查找的id默认为全部商品
		String oid = "全部";
		String _oid = req.getParameter("oid");
		//判断是否根据分类查询数据
		if(_oid != null){
			oid = _oid;
		}
		//定义查找的id默认为全部商品
		String username = "全部";
		String _username = req.getParameter("username");
		//判断是否根据分类查询数据
		if(_username != null){
			username = _username;
		}
		//定义查找的id默认为全部商品
		Integer state = 9;
		Integer _state = Integer.parseInt(req.getParameter("state"));
		//判断是否根据分类查询数据
		if(_state != null){
			state = _state;
		}
		
		//调用业务逻辑层的分类查询方法
		OrderPageBean bean = orderBiz.FindOrderByPage(currentPage, currentCount, oid, username, state);
	
	    //把数据传递给jsp页面
		req.setAttribute("bean", bean);
		
		//转发跳转页面
		req.getRequestDispatcher("/admin/order.jsp").forward(req, resp);
				
	}

}
