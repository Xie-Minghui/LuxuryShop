package com.web.dao;

import java.math.BigDecimal;
import java.util.List;
import com.web.entity.*;

import com.web.entity.Product;

/**
 * 商品的数据访问层接口
 * @author ASUS
 *
 */
public interface ProductDao {
	
	/**
	 * 查询商品的总条数
	 * @param category
	 * @return
	 */
	public Integer findAllCount(String category);

	/**
	 * 根据类别分页查询数据
	 * @param currentPage  当前页码
 	 * @param currentCount   每页显示的条数
	 * @param category  类别
	 * @return
	 */
	public List<Product> findByPage(Integer currentPage,int currentCount,String category);
	
	
	/**
	 * 根据字段搜索总条数
	 * @param searchfield
	 * @return
	 */
	public Integer findLuxuryByNameAllCount(String searchfield);
	
	/**
	 * 根据字段搜索数据
	 * @param currentPage  当前页
	 * @param currentCount  每页的条数
	 * @param searchfield  搜索的字段
	 * @return
	 */
	public List<Product> findLuxuryByName(int currentPage,int currentCount,String searchfield);
	
	/**
	 * 根据价格搜索总条数
	 * @param max
	 * @param min
	 * @return
	 */
	public Integer findLuxuryByPriceAllCount(BigDecimal max, BigDecimal min);
	
	/**
	 * 根据价格搜索数据
	 * @param currentPage
	 * @param currentCount
	 * @param max
	 * @param min
	 * @return
	 */
	public List<Product> findLuxuryByPrice(int currentPage,int currentCount,BigDecimal max, BigDecimal min);

	/**
	 * 根据id查询商品的详情信息
	 * @param id
	 * @return
	 */
	public Product findLuxuryById(int id);
	
	/**
	 * 生成订单时，将商品库存数量减少
	 * @param orderItem
	 * @return
	 */
	public boolean changeLuxuryNum(OrderItem orderItem);
	
	/**
	 * 得到每周热卖商品
	 * @param order
	 * @return
	 */
	public List<Object[]> getWeekHotLuxury();
}