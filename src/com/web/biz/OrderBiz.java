package com.web.biz;

import java.util.List;

import com.web.entity.Consumer;
import com.web.entity.Order;
import com.web.util.OrderPageBean;

public interface OrderBiz {
	// 添加订单
	public boolean addOrder(Order order);
	
	//通过消费者查询订单
	public List<Order> findOrderByConsumer(Consumer consumer);
	
	//通过订单id查询订单
	public Order findOrderById(String id);
	
	public boolean changeState(Order order);
	
	public OrderPageBean FindOrderByPage(Integer currentPage, int currentCount, String oid, String username, Integer state);
	
	//根据oid发货（改变订单状态）
	public boolean deliverById(String oid);
	
	//更具订单状态查找订单
	public List<Order> findOrderByState(Integer state);
	
	//查找已发货订单
	public List<Order> findDeliveredOrder();
}
