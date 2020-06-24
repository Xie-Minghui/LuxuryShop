package com.web.tag;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.web.entity.Consumer;

public class PrivilegeTag extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException {
		//获取页面 上下文信息
		PageContext context = (PageContext) this.getJspContext();
		
		//获取request，response对象
		HttpServletRequest request = (HttpServletRequest) context.getRequest();
		HttpServletResponse response = (HttpServletResponse) context.getResponse();
		
		//获取客户信息
		HttpSession session = context.getSession();
		Consumer consumer = (Consumer) session.getAttribute("consumer");
		
		if(consumer == null) {
			response.sendRedirect(request.getContextPath()+"/client/login.jsp");
		}
	}
	
}
