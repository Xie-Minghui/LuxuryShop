package com.web.biz.impl;

import java.util.List;

import com.web.biz.OrderBiz;
import com.web.biz.OrderItemBiz;
import com.web.biz.ProductBiz;
import com.web.dao.OrderDao;
import com.web.dao.impl.OrderDaoImpl;
import com.web.entity.Consumer;
import com.web.entity.Order;
import com.web.entity.OrderItem;

public class OrderBizImpl implements OrderBiz {

	
	
	//实例化订单条目的业务逻辑层
	OrderItemBiz orderItemBiz = new OrderItemBizImpl();
	//实例化订单的数据访问层
	OrderDao orderDao = new OrderDaoImpl();
	//实例化商品的业务逻辑层
	ProductBiz productBiz = new ProductBizImpl();
	
	
	@Override
	public boolean addOrder(Order order) {
		boolean flag  = false;
		
		try {
			//添加订单
			 orderDao.addOrder(order);
			 
			//获取订单的条目信息
			 List<OrderItem> list = order.getOrderItems();
			 
			 //循环
			 for (OrderItem orderItem : list) {
				 //添加订单条目
				 orderItemBiz.addOrderItem(orderItem);
				 
				 //商品库存数量的减少
				 productBiz.changeLuxuryNum(orderItem);
			}
			
			 flag = true;
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		}
		
		return flag;
	}

		
	@Override
	public List<Order> findOrderByConsumer(Consumer consumer) {
		return orderDao.findOrderByConsumer(consumer);
	}


	@Override
	public Order findOrderById(String id) {
		//查询订单的信息
		Order order = orderDao.findOrderById(id);
		
		//查询订单项的信息
		List<OrderItem> orderItemList = orderItemBiz.findOrderItemByOrder(order);
		
		//设置订单的订单项
		order.setOrderItems(orderItemList);
		
		return order;
	}

}
