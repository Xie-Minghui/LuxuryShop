package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.web.biz.UserBiz;
import com.web.biz.impl.UserBizImpl;
import com.web.entity.User;
import com.web.util.ActiveCodeUtil;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//调用业务逻辑层的注册方法
		
		//实例化业务逻辑层
		UserBiz userBiz = new UserBizImpl();
		
		//实例化用户对象
		Consumer user = new Consumer();
		
	    try {
	    	//把表单中的参数赋值给用户对象
			BeanUtils.populate(Consumer, req.getParameterMap());
			
			//给用户设置激活码
			user.setActiveCode(ActiveCodeUtil.createActiveCode());
			
			//设置角色
			user.setRole("普通用户");
			
			//调用业务逻辑层的注册方法
			boolean flag = userBiz.register(user);
			
			if(flag){//如果注册成功
				
				//req.getContextPath():获取绝对路径
				resp.sendRedirect(req.getContextPath()+"/client/registerSuccess.jsp");
			}else{
				//req.getContextPath():获取绝对路径
				resp.sendRedirect(req.getContextPath()+"/client/register.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
