package com.web.biz.impl;

import java.util.List;

import com.web.biz.OrderItemBiz;
import com.web.dao.OrderItemDao;
import com.web.dao.impl.OrderItemDaoImpl;
import com.web.entity.Order;
import com.web.entity.OrderItem;

public class OrderItemBizImpl implements OrderItemBiz {
	
	//实例化数据访问层
	OrderItemDao orderItemDao = new OrderItemDaoImpl();
	
	@Override
	public boolean addOrderItem(OrderItem orderItem) {
		return orderItemDao.addOrderItem(orderItem);
	}

	@Override
	public List<OrderItem> findOrderItemByOrder(Order order) {
		return orderItemDao.findOrderItemByOrder(order);
	}

	@Override
	public boolean addComment(OrderItem orderItem) {
		return orderItemDao.addComment(orderItem);
	}

}
