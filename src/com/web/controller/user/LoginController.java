package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.biz.ConsumerBiz;
import com.web.biz.impl.ConsumerBizImpl;
import com.web.entity.Consumer;


/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取登录页面表单的参数值
		String EMAIL = request.getParameter("EMAIL");
		String PSWD = request.getParameter("PSWD");
		
		//调用业务逻辑层的登录方法
		ConsumerBiz consumerBiz = new ConsumerBizImpl();
		Consumer consumer = consumerBiz.login(EMAIL, PSWD);
		if(consumer !=null){
			//测试
			System.out.println(consumer.getCNAME());
			//保存用户的会话信息到session中
			HttpSession session = request.getSession();
			session.setAttribute("consumer", consumer);
			
			//登录成功
			
			//跳转到前台的用户信息界面
			response.sendRedirect(request.getContextPath()+"/client/index.jsp");
		}else{
			//登录失败
			response.sendRedirect(request.getContextPath()+"/client/login.jsp");
		}
	}

}
