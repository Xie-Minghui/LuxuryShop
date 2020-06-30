package com.web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.web.dao.AdminDao;
import com.web.entity.Admin;
import com.web.util.JDBCUtil;

public class AdminDaoImpl implements AdminDao {

	@Override
	public Admin login(String aname, String pswd) {
		//实例化集合对象
		List<Admin> list = new ArrayList<Admin>();
		
		try {
			//获取数据库的连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql ="select * from admin  where aname=? and pswd=?";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setString(1, aname);
			ps.setString(2, pswd);
			
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			//循环结果集
			while(rs.next()){
				//实例化对象
				Admin admin = new Admin();
				
				admin.setAID(rs.getInt("AID"));
				admin.setANAME(rs.getString("ANAME"));
				admin.setPSWD(rs.getString("PSWD"));
				
				//把对象添加到集合中去
				list.add(admin);
			}
			
			//关闭
			JDBCUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//判断集合中的个数是否大于0，如果大于0，则返回集合中的第一个对象，否则返回空对象
		return list.size()>0 ? list.get(0) : null;
	}

}
