package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.biz.ProductBiz;
import com.web.biz.impl.ProductBizImpl;
import com.web.util.PageBean;

/**
 * 前台页面，用于菜单栏下面搜索功能的控制层
 * @author ASUS
 *
 */
@WebServlet(urlPatterns="/MenuSearchController")
public class MenuSearchController extends HttpServlet {
	
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	doPost(req, resp);
    }
	
	@Override
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
		
		//定义每页的条数，默认为4
		Integer currentCount = 4;
		String _currentCount = req.getParameter("currentCount");
		
		if(_currentCount != null){
			currentCount = Integer.parseInt(_currentCount);
		}
		
		//获取前台jsp页面传过来的搜索字段信息
		String searchfield = req.getParameter("textfield");
		


		if("What Are You Looking For".equals(searchfield) || searchfield == null){
			

			//转发到显示商品信息页面的后台控制层
			req.getRequestDispatcher("/showProductByPage").forward(req, resp);
		}else{
			
			//调用业务逻辑层根据搜索字段分页查询数据方法
			PageBean bean = productBiz.findProductByName(currentPage, currentCount, searchfield);
			
			//把数据传到前台jsp页面
			req.setAttribute("bean", bean);
			
			System.out.println(bean.getCategory());

			System.out.println(bean.getTotalCount());
			
			//转发跳转页面
			req.getRequestDispatcher("/client/search_shop.jsp").forward(req, resp);
			
		}
	}
	
}





