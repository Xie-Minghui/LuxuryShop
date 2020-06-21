package com.web.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.entity.Consumer;

/**
 * 用户详情页
 */

@WebServlet("/MyAccountController")

public class MyAccountController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 获取session中的用户信息
		HttpSession session = request.getSession();
		
		Consumer consumer = (Consumer)session.getAttribute("consumer");
		
		if(consumer == null) {
			response.sendRedirect(request.getContextPath()+"/client/login.jsp");
		}else{
			response.sendRedirect(request.getContextPath()+"/client/account.jsp");
		}
	}
}
