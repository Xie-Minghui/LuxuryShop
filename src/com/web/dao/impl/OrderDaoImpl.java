package com.web.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.web.dao.OrderDao;
import com.web.entity.Consumer;
import com.web.entity.Order;
import com.web.util.JDBCUtil;

public class OrderDaoImpl implements OrderDao {

    // 添加订单实现
	@Override
	public boolean addOrder(Order order) {
		//定义影响的行数
		int count = 0;

        try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "insert into orders (cid, lid, oid, num, "
                    + "date, pay, sumprice, state) "
					+ "values (?,?,?,?,?,?,?,?)";
		    //编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setInt(1, order.getCID());
			ps.setInt(2, order.getLID());
			ps.setString(3, order.getOID());
			ps.setInt(4, order.getNUM());
			ps.setDate(5,  new Date(new java.util.Date().getTime()));
			ps.setString(6, order.getPAY());
			ps.setBigDecimal(7, order.getSUMPRICE());
			// 0  待支付，1已支付
			ps.setInt(8, 0);
			
			//执行添加
			count = ps.executeUpdate();
			
			//关闭
			JDBCUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count > 0 ? true : false;
	}

	@Override
	public List<Order> findOrderByConsumer(Consumer consumer) {
		//实例化集合对象
		List<Order> list = new ArrayList<Order>();
		
		try {
			//获取数据库连接对象
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select * from orders where cid="+consumer.getCID();
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				//实例化订单对象
				Order order = new Order();
				
				order.setCID(rs.getInt("CID"));
				order.setLID(rs.getInt("LID"));
				order.setOID(rs.getString("OID"));
				order.setNUM(rs.getInt("NUM"));
				order.setDATE(rs.getDate("DATE"));
				order.setPAY(rs.getString("PAY"));
				order.setSUMPRICE(rs.getBigDecimal("SUMPRICE"));
				order.setSTATE(rs.getInt("STATE"));
				order.setCOMMENT(rs.getString("COMMENT"));
				
				order.setConsumer(consumer);
				//根据订单id查询订单条目信息
//						List<OrderItem> orderItems = 
//						order.setOrderItems(orderItems);
				
				//把对象添加到集合中
				list.add(order);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
    
}
