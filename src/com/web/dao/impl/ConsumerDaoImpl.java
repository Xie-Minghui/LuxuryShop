package com.web.dao.impl;

import java.sql.Connection;
//import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.web.dao.ConsumerDao;
import com.web.entity.Consumer;
import com.web.util.JDBCUtil;

/**
 * 用户数据访问层实现类
 * @author ASUS
 * implements ConsumerDao：实现了用户接口
 *
 */
public class ConsumerDaoImpl implements ConsumerDao {

	/**
	 * @Override:重写
	 * 注册方法
	 */
	@Override
	public boolean add(Consumer Consumer) {
		
		//定义影响行数的变量
		int count = 0;
		
		try {
			//获取数据库连接对象
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "insert into Consumer (cnick,cname,pn,addr,"
					+ "gender,email,bday,pswd,province,city,district)  "
					+ "values (?,?,?,?,?,?,?,?,?,?,?)";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setString(1, Consumer.getCNICK());
			ps.setString(2, Consumer.getCNAME());
			ps.setString(3, Consumer.getPN());
			ps.setString(4, Consumer.getADDR());
			ps.setString(5, Consumer.getGENDER());
			ps.setString(6, Consumer.getEMAIL());
			
			ps.setString(7,Consumer.getBDAY());
//			ps.setDate(9, new Date(new java.util.Date().getTime()));
			ps.setString(8, Consumer.getPSWD());
			ps.setString(9,Consumer.getPROVINCE());
			ps.setString(10, Consumer.getCITY());
			ps.setString(11, Consumer.getDISTRICT());
			//注册时间的设置
			
			//执行修改
			count = ps.executeUpdate();
			
			//关闭
			JDBCUtil.close();
			
		} catch (Exception e) {
			e.printStackTrace();//如果有错误，则在控制台抛出错误信息
		}
		
		//如果count>0,则返回true，否则返回false
		return count > 0 ? true : false;
	}

	/**
	 * 登录
	 */
	@Override
	public Consumer login(String email, String pswd) {
		
		//实例化集合对象
		List<Consumer> list = new ArrayList<Consumer>();
		
		try {
			//获取数据库的连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql ="select * from consumer  where email=? and pswd=?";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setString(1, email);
			ps.setString(2, pswd);
			
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			//循环结果集
			while(rs.next()){
				//实例化对象
				Consumer Consumer = new Consumer();
				
				Consumer.setCID(rs.getInt("CID"));
				Consumer.setCNICK(rs.getString("CNICK"));
				Consumer.setCNAME(rs.getString("CNAME"));
				Consumer.setPN(rs.getString("PN"));
				Consumer.setADDR(rs.getString("ADDR"));
				Consumer.setGENDER(rs.getString("GENDER"));
				Consumer.setEMAIL(rs.getString("EMAIL"));
				Consumer.setBDAY(rs.getString("BDAY"));
				Consumer.setPSWD(rs.getString("PSWD"));
				
				Consumer.setPROVINCE(rs.getString("PROVINCE"));
				Consumer.setCITY(rs.getString("CITY"));
				Consumer.setDISTRICT(rs.getString("DISTRICT"));
				//把对象添加到集合中去
				list.add(Consumer);
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
