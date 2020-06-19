package com.web.biz;

import com.web.util.PageBean;

/**
 * 商品的业务逻辑层
 * @author ASUS
 *
 */
public interface ProductBiz {

	/**
	 * 根据类别分页查询数据信息
	 * @param currentPage  当前页码
	 * @param currentCount  每页显示的条数
	 * @param category   类别
	 * @return
	 */
	public PageBean findProductByPage(int currentPage,int currentCount,String category);


	/**
	 * 前台，用于搜索框根据书名来模糊查询相应的图书
	 * @param currentPage
	 * @param currentCount
	 * @param searchfield
	 * @return
	 */
    public PageBean findBookByName(int currentPage,int currentCount,String searchfield);

    
}