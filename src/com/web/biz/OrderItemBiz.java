package com.web.biz;

import java.util.List;

import com.web.entity.Order;
import com.web.entity.OrderItem;

public interface OrderItemBiz {
	public boolean addOrderItem(OrderItem orderItem);
	public List<OrderItem> findOrderItemByOrder(Order order);
	public boolean addComment(OrderItem orderItem);
}
