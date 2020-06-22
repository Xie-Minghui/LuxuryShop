package com.web.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.web.dao.OrderDao;
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
    
}
