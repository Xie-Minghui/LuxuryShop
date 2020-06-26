package com.web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
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
			String sql = "insert into orders (oid, cid, date, pay, sumprice,"
                    + "state, name, phone, province, city, district, addr, remark) "
					+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		    //编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setString(1, order.getOID());
			ps.setInt(2, order.getCID());
			ps.setTimestamp(3, new Timestamp(new java.util.Date().getTime()));
			ps.setString(4, order.getPAY());
			ps.setBigDecimal(5, order.getSUMPRICE());
			ps.setInt(6, 0);// 0  待支付，1已支付
			ps.setString(7, order.getPHONE());
			ps.setString(8, order.getPROVINCE());
			ps.setString(9, order.getCITY());
			ps.setString(10, order.getDISTRICT());
			ps.setString(11, order.getADDR());
			ps.setString(12, order.getADDR());
			ps.setString(13, order.getREMARK());
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
				
				order.setOID(rs.getString("OID"));
				order.setCID(rs.getInt("CID"));
				order.setConsumer(consumer);
				order.setDATE(rs.getTimestamp("DATE"));
				order.setPAY(rs.getString("PAY"));
				order.setSUMPRICE(rs.getBigDecimal("SUMPRICE"));
				order.setSTATE(rs.getInt("STATE"));
				order.setNAME(rs.getString("NAME"));
				order.setPHONE(rs.getString("PHONE"));
				order.setPROVINCE(rs.getString("PROVINCE"));
				order.setCITY(rs.getString("CITY"));
				order.setDISTRICT("DISTRICT");
				order.setADDR("ADDR");
				order.setREMARK("REMARK");
				
				//把对象添加到集合中
				list.add(order);
			}
			
			//关闭
			JDBCUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Order findOrderById(String id) {
		//实例化集合对象
		List<Order> list = new ArrayList<Order>();
		
		try {
			//获取数据库连接对象
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select * from orders where OID=?";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setString(1, id);
			
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				//实例化订单对象
				Order order = new Order();
				
				order.setOID(rs.getString("OID"));
				order.setCID(rs.getInt("CID"));
				order.setDATE(rs.getTimestamp("DATE"));
				order.setPAY(rs.getString("PAY"));
				order.setSUMPRICE(rs.getBigDecimal("SUMPRICE"));
				order.setSTATE(rs.getInt("STATE"));
				order.setNAME(rs.getString("NAME"));
				order.setPHONE(rs.getString("PHONE"));
				order.setPROVINCE(rs.getString("PROVINCE"));
				order.setCITY(rs.getString("CITY"));
				order.setDISTRICT("DISTRICT");
				order.setADDR("ADDR");
				order.setREMARK("REMARK");
				
				//把对象添加到集合中
				list.add(order);
			}
			//关闭
			JDBCUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list.size()> 0 ? list.get(0) : null;
	}

	@Override
	public boolean changeState(Order order) {
		//定义影响的行数
		int count = 0;

        try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "update orders set state = ? where oid = ?";
		    //编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setInt(1, order.getSTATE());
			ps.setString(2, order.getOID());
			
			//执行添加
			count = ps.executeUpdate();
			
			//关闭
			JDBCUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count > 0 ? true : false;
	}
    
}
