package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.biz.AdminBiz;
import com.web.biz.impl.AdminBizImpl;
import com.web.entity.Admin;
/**
 * Servlet implementation class AdminLoginController
 */
@WebServlet("/AdminLoginController")
public class AdminLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginController() {
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
		//获取登录页面表单的参数值
		String aname = request.getParameter("ANAME");
		String pswd = request.getParameter("PSWD");
		
		//调用业务逻辑层的登录方法
		AdminBiz adminBiz = new AdminBizImpl();
		Admin admin = adminBiz.login(aname, pswd);
		if(admin !=null){
			//测试
			System.out.println(admin.getANAME());
			//保存用户的会话信息到session中
			HttpSession session = request.getSession();
			session.setAttribute("admin", admin);
			
			//登录成功
			
			//跳转到前台的用户信息界面
			response.sendRedirect(request.getContextPath()+"/admin/index.jsp");
		}else{
			//登录失败
			response.sendRedirect(request.getContextPath()+"/admin/signin.jsp");
		}
	}

}
