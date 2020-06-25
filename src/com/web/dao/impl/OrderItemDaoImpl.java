package com.web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.web.dao.OrderItemDao;
import com.web.dao.ProductDao;
import com.web.entity.Order;
import com.web.entity.OrderItem;
import com.web.entity.Product;
import com.web.util.JDBCUtil;

public class OrderItemDaoImpl implements OrderItemDao {
	
	//实例化商品的数据访问层
	ProductDao productDao = new ProductDaoImpl();
	
	@Override
	public boolean addOrderItem(OrderItem orderItem) {
		int count = 0;
		try {
			
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "insert into orders_item (OID, LID, NUM) values (?,?,?)";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, orderItem.getOID());
			ps.setInt(2, orderItem.getLID());
			ps.setInt(3, orderItem.getNUM());
			
			//执行修改操作
			count = ps.executeUpdate();
			
			//关闭
			JDBCUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return count > 0 ? true : false;
	}

	@Override
	public List<OrderItem> findOrderItemByOrder(Order order) {
		//实例化集合对象
		List<OrderItem> list = new ArrayList<OrderItem>();
		
		try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select * from orders_item where  OID ='"+order.getOID()+"'";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			//循环
			while(rs.next()){
				//实例化订单项对象
				OrderItem orderItem = new OrderItem();
				
				orderItem.setOID(rs.getString("OID"));
				orderItem.setLID(rs.getInt("LID"));
				orderItem.setNUM(rs.getInt("NUM"));
				orderItem.setCOMMENT(rs.getString("COMMENT"));
				
				
				//根据商品的id查询商品信息
				int productId = orderItem.getLID();
				Product product = productDao.findLuxuryById(productId);
				
				orderItem.setLuxury(product);;
				
				//把对象添加到集合中
				list.add(orderItem);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;

	}

}
