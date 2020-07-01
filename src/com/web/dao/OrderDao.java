package com.web.dao;

import java.math.BigDecimal;
import java.util.List;

import com.web.entity.Consumer;
import com.web.entity.Order;

/**
 * 查询订单
 * @author HEEEEE
 *
 */

public interface OrderDao {
    // 添加订单
    public boolean addOrder(Order order);

    // 通过消费者查询订单
    public List<Order> findOrderByConsumer(Consumer consumer);
    
    //通过订单id查询订单
    public Order findOrderById(String id);
    
    //改变订单状态
    public boolean changeState(Order order);

    // 分页查询订单
	public List<Order> findOrderByPage(Integer currentPage, int currentCount, String id, String username, Integer state);

	public Integer findOrderAllCount(String oid, String username, Integer state);
	
	//根据oid发货（改变订单状态）
	public boolean deliverById(String oid);
	
	//更具订单状态查找订单
	public List<Order> findOrderByState(Integer state);
	
	//查找已发货订单
	public List<Order> findDeliveredOrder();
	
	//查询订单总量
	public Integer countAllOrder();
	
	//查询总流水
	public BigDecimal totalSales();
}
