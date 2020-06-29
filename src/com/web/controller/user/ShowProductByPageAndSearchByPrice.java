package com.web.controller.user;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.biz.ProductBiz;
import com.web.biz.impl.ProductBizImpl;
import com.web.util.PageBean;

/**
 * Servlet implementation class ShowProductByPageAndSearchByPrice
 */
@WebServlet("/ShowProductByPageAndSearchByPrice")
public class ShowProductByPageAndSearchByPrice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowProductByPageAndSearchByPrice() {
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
		//实例化业务逻辑层
		ProductBiz productBiz = new ProductBizImpl();
		
		 //定义当前页码,默认为1
		Integer currentPage = 1;
		String _currentPage = req.getParameter("currentPage");
		
		//判断当前页码是否为空
		if(_currentPage != null){
			
			//将字符串转换为整形
			currentPage = Integer.parseInt(_currentPage);
		}
		
		//定义每页的条数，默认为9
		Integer currentCount = 9;
		String _currentCount = req.getParameter("currentCount");
		
		if(_currentCount != null){
			currentCount = Integer.parseInt(_currentCount);
		}
		
		//获取前台jsp页面传过来的搜索字段信息
		BigDecimal minPrice = new BigDecimal(req.getParameter("minPrice"));
		BigDecimal maxPrice = new BigDecimal(req.getParameter("maxPrice"));
			
		//调用业务逻辑层根据搜索字段分页查询数据方法
		PageBean bean = productBiz.findProductByPrice(currentPage, currentCount ,maxPrice ,minPrice);
		
		//把数据传到前台jsp页面
		req.setAttribute("bean", bean);

		System.out.println(bean.getTotalCount());
		
		//转发跳转页面
		req.getRequestDispatcher("/client/").forward(req, resp);
	}

}
