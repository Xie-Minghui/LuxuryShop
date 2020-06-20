package com.web.filter;

import java.io.IOException;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
/**
 * 字符编码过滤器
 * @author hkh
 *
 */
public class CharacterEncodingFilter implements Filter {

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filter)
			throws IOException, ServletException {

		
		//设置服务器端向客户端相应内容的编码格式
		response.setCharacterEncoding("UTF-8");
		
		//输出数据的编码格式设置为UTF-8
		response.setContentType("text/html;charset=utf-8");
		
		//处理请求的乱码
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		
		//获取自定义的请求对象
		HttpServletRequest myRequest = new MyRequest(httpServletRequest);
		
		//过滤
		filter.doFilter(myRequest, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}

//自定义request对象
class MyRequest extends HttpServletRequestWrapper{
	
	private HttpServletRequest request;
	private boolean hasEncode;//是否转码

	public MyRequest(HttpServletRequest request) {
		super(request);
		this.request = request;
	}
	
	@Override
	public Map<String, String[]> getParameterMap() {
		
		//获取请求的方式
		String method = request.getMethod();
		
		//判断请求的方式是否post
		if(method.equalsIgnoreCase("post")){
			
			//post请求  表单提交方式为post的情况
			try {
				request.setCharacterEncoding("UTF-8");
				
				return request.getParameterMap();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(method.equalsIgnoreCase("get")){
			
			//get请求：超链接、直接访问、表单提交方式为get的情况
			
			Map<String, String[]>  parameterMap = request.getParameterMap();
			
			if(!hasEncode){//如果不是手动编码逻辑只运行一次
				
				//循环参数
				for (String parameterName : parameterMap.keySet()) {
					
					//获取键对应的值
					String[] values = parameterMap.get(parameterName);
					
					if(values != null){//判断值是否为空
						
						//循环
						for(int i=0;i < values.length;i++){
							try {
								
								//对每一个值设置编码格式为UTF-8
								values[i] = new String(values[i].getBytes("ISO-8859-1"),"UTF-8");
							} catch (Exception e) {
								e.printStackTrace();
							}
						}
					}
				}
				hasEncode = true;
			}
			
			return parameterMap;
		}
		
		return super.getParameterMap();
	}
	
	@Override
	public String getParameter(String name) {
		
		Map<String, String[]> parameterMap = getParameterMap();
		
		String[] values = parameterMap.get(name);
		
		if(values == null){
			return null;
		}
		
		return values[0];
	}
	
	@Override
	public String[] getParameterValues(String name) {

		Map<String, String[]> parameterMap = getParameterMap();
		
		String[] values = parameterMap.get(name);
		
		return values;
	}
}
