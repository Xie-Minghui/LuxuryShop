package com.web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.web.dao.FavorDao;
import com.web.dao.ProductDao;
import com.web.entity.Consumer;
import com.web.entity.Favor;
import com.web.entity.Product;
import com.web.util.JDBCUtil;

public class FavorDaoImpl implements FavorDao {
	ProductDao productDao = new ProductDaoImpl();
	
	@Override
	public boolean addFavor(Favor favor) {
		//定义影响的行数
		int count = 0;

        try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "insert into favor (cid, lid)"
					+ "values (?,?)";
		    //编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setInt(1, favor.getCID());
			ps.setInt(2, favor.getLID());
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
	public boolean deleFavorByCIDAndLID(Integer CID, Integer LID) {
		//定义影响的行数
		int count = 0;

        try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "delete from favor where cid=? and lid=?";
		    //编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setInt(1, CID);
			ps.setInt(2, LID);
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
	public List<Favor> findFavorByConsumer(Consumer consumer) {
		//实例化集合对象
		List<Favor> list = new ArrayList<Favor>();
		
		try {
			//获取数据库连接对象
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select * from favor where cid="+consumer.getCID();
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				//实例化订单对象
				Favor favor = new Favor();
				
				favor.setCID(rs.getInt("CID"));
				favor.setLID(rs.getInt("LID"));
				
				Product luxury = productDao.findLuxuryById(favor.getLID());
				favor.setLuxury(luxury);
						
				//把对象添加到集合中
				list.add(favor);
			}
			
			//关闭
			JDBCUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
