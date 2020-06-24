package com.web.dao;

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
    
}