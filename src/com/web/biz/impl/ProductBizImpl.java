package com.web.biz.impl;

import java.math.BigDecimal;
import java.util.List;

import com.web.biz.ProductBiz;
import com.web.dao.ProductDao;
import com.web.dao.impl.ProductDaoImpl;
import com.web.entity.OrderItem;
import com.web.entity.Product;
import com.web.util.PageBean;

/**
 * 商品的业务逻辑层实现类
 * @author ASUS
 *
 */
public class ProductBizImpl implements ProductBiz {
	
	//实例化数据访问层
	ProductDao productDao = new ProductDaoImpl();

	/**
	 * 根据类别分页查询商品数据信息
	 */
	@Override
	public PageBean findProductByPage(int currentPage, int currentCount, String category) {
		
		//获取分页查询的总条数
		Integer totalCount =productDao.findAllCount(category);
		
		//获取分页查询的数据信息
		List<Product> list = productDao.findByPage(currentPage, currentCount, category);
		
		PageBean pageBean = new PageBean();
		pageBean.setCategory(category);
		pageBean.setCurrentCount(currentCount);
		pageBean.setCurrentPage(currentPage);
		pageBean.setluxuryList(list);
		pageBean.setSearchfild(null);
		pageBean.setTotalCount(totalCount);
		
		return pageBean;
	}

	/**
	 * 前台，用于搜索框根据书名来模糊查询相应的图书
	 * @param currentPage
	 * @param currentCount
	 * @param searchfield
	 * @return
	 */
	@Override
	public PageBean findProductByName(int currentPage, int currentCount, String searchfield) {
		
		PageBean bean = new PageBean();
		
		//设置每页显示的条数
		bean.setCurrentCount(currentCount);
		
		//设置当前页码
		bean.setCurrentPage(currentPage);
		
		//设置搜索标记
		bean.setCategory(searchfield);

		//设置数据信息
		List<Product> list = productDao.findLuxuryByName(currentPage, currentCount, searchfield);
		bean.setluxuryList(list);
		
		//设置搜索的字段
		bean.setSearchfild(searchfield);
		
		//设置总条数
		Integer totalCount = productDao.findLuxuryByNameAllCount(searchfield);
		bean.setTotalCount(totalCount);
		
		return bean;
	}

	@Override
	public Product findProductById(int id) {
		
		return productDao.findLuxuryById(id);
	}

	@Override
	public boolean changeLuxuryNum(OrderItem orderItem) {
		/**
		 * 生成订单时，将商品库存数量减少
		 * @param orderItem
		 * @return
		 */
		return productDao.changeLuxuryNum(orderItem);
	}

	@Override
	public List<Product> getHotLuxury() {
		/**
		 * 得到每周热卖商品
		 * @param order
		 * @return
		 */
		return productDao.getHotLuxury();
		
	}

	@Override
	public PageBean findProductByPrice(int currentPage, int currentCount, BigDecimal max, BigDecimal min) {
		
		PageBean bean = new PageBean();
		
		//设置每页显示的条数
		bean.setCurrentCount(currentCount);
		
		//设置当前页码
		bean.setCurrentPage(currentPage);
		
		//设置搜索标记
		bean.setCategory(null);

		//设置数据信息
		List<Product> list = productDao.findLuxuryByPrice(currentPage, currentCount, max, min);
		bean.setluxuryList(list);
		
		//设置搜索的字段
		bean.setSearchfild(null);
		
		//设置价格范围
		bean.setMinPrice(min);
		bean.setMaxPrice(max);
		
		//设置总条数
		Integer totalCount = productDao.findLuxuryByPriceAllCount(max, min);
		bean.setTotalCount(totalCount);
		
		return bean;
	}

	@Override
	public List<Product> findLuxuryByCategory(String category) {
		return productDao.findLuxuryByCategory(category);
	}

}