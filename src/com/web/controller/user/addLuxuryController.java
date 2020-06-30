package com.web.controller.user;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.web.biz.ProductBiz;
import com.web.biz.impl.ProductBizImpl;
import com.web.entity.Product;

/**
 * Servlet implementation class addLuxuryController
 */
@WebServlet("/addLuxuryController")
public class addLuxuryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addLuxuryController() {
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
		DiskFileItemFactory factory=new DiskFileItemFactory();
        ServletFileUpload upload=new ServletFileUpload(factory);
 
        request.setCharacterEncoding("utf-8");
 
        //设置缓冲区大小与临时文件目录
        factory.setSizeThreshold(1024*1024*10);
        File uploadTemp=new File("d:\\uploadTemp");
        uploadTemp.mkdirs();
        factory.setRepository(uploadTemp);
 
        //设置单个文件大小限制
        upload.setFileSizeMax(1024*1024*10);
        //设置所有文件总和大小限制
        upload.setSizeMax(1024*1024*30);
        
        String fileName = null;
    	List<String> pList = new ArrayList<String>();
        try {
            List<FileItem> list=upload.parseRequest(request);
            System.out.println(list);
            for (FileItem fileItem:list){
                if (!fileItem.isFormField()&&fileItem.getName()!=null&&!"".equals(fileItem.getName())){
                    String filName=fileItem.getName();
                    //利用UUID生成伪随机字符串，作为文件名避免重复
                    String uuid= UUID.randomUUID().toString();
                    //获取文件后缀名
                    String suffix=filName.substring(filName.lastIndexOf("."));
                    
                    //获取文件上传目录路径，在项目部署路径下的upload目录里。若想让浏览器不能直接访问到图片，可以放在WEB-INF下
                    String uploadPath=request.getSession().getServletContext().getRealPath("/client/product/image");
                    System.out.println(uploadPath);
                    File file=new File(uploadPath);
                    file.mkdirs();
                    //写入文件到磁盘，该行执行完毕后，若有该临时文件，将会自动删除
                    fileName = uuid+suffix;
                    fileItem.write(new File(uploadPath,fileName));
                    
                }else {
                	String value = fileItem.getString("UTF-8");
                	pList.add(value);
                	System.out.println(value);
                }
            }
        }  catch (Exception e) {
            e.printStackTrace();
        }
	
		//实例化业务逻辑层
		ProductBiz productBiz = new ProductBizImpl();
		
		//实例化用户对象
		Product luxury = new Product();
		
	    try {
	    	//把表单中的参数赋值给用户对象
			BeanUtils.populate(luxury, request.getParameterMap());
			luxury.setAID(Integer.parseInt(pList.get(0)));;
			luxury.setLNAME(pList.get(1));
			luxury.setPRICE(new BigDecimal(pList.get(2)));
			luxury.setRESTNUM(Integer.parseInt(pList.get(3)));
			luxury.setTYPE(pList.get(4));
			luxury.setINFOR(pList.get(5));
			luxury.setSIZE(pList.get(6));
			luxury.setWEIGHT(new BigDecimal(pList.get(7)));
			luxury.setCOLOR(pList.get(8));
			String iMAGE = "client/product/image/"+fileName;
			luxury.setIMAGE(iMAGE);
			//调用业务逻辑层的注册方法
			boolean flag = productBiz.addLuxury(luxury);
			
			if(flag){//如果注册成功
				
				//req.getContextPath():获取绝对路径
				//response.sendRedirect(request.getContextPath()+"/client/login.jsp");
			}else{
				//req.getContextPath():获取绝对路径
				//response.sendRedirect(request.getContextPath()+"/client/register.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
