package com.web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.web.dao.ProductDao;
import com.web.entity.Order;
import com.web.entity.Product;
import com.web.util.JDBCUtil;

/**
 * 商品的数据访问层实现类
 * @author xmh
 *
 */
public class ProductDaoImpl implements ProductDao {

	/**
	 * 获取商品的总条数
	 */
	@Override
	public Integer findAllCount(String type) {
		
		//定义总条数
		Integer totalCount = 0;
		
		try {
			//获取数据库的连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select count(*) from luxury";
			
			if(!"全部商品".equals(type)){
				sql+=" where type='"+type+"'";
			}
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			//循环
			while(rs.next()){
				
				//取结果集中的第一个值赋值给totalCount
				totalCount = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return totalCount;
	}

	/**
	 * 根据类别分页查询数据信息
	 */
	@Override
	public List<Product> findByPage(Integer currentPage, int currentCount, String type) {
		
		//实例化集合对象
		List<Product> list = new ArrayList<Product>();
		
		try {
			//获取数据库的连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
//			String sql = null;
//			
//			//如果是根据类别查询商品的数据信息
//			if(!"全部商品".equals(type)){
//				sql = "select * from products where type=? limit ?,?";
//			}else{
//				sql = "select * from products limit ?,?";
//			}
			
			StringBuffer sb = new StringBuffer("select * from luxury");
			
			//如果是根据类别查询商品的数据信息
			if(!"全部商品".equals(type)){
				sb.append(" where type='"+type+"' ");
			}
			
			//添加分页查询的参数
			sb.append(" limit ?,?");
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sb.toString());
			
			//设置参数
			ps.setInt(1, (currentPage-1)*currentCount);//设置分页查询排除的笔数
			ps.setInt(2, currentCount);//设置分页查询每页显示的条数
			
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			//循环结果集对象
			while(rs.next()){
				Product p = new Product();
				p.setLID(rs.getInt("lid"));
				p.setAID(rs.getInt("aid"));
				p.setLNAME(rs.getString("lname"));
				p.setPRICE(rs.getBigDecimal("price"));
				p.setINFOR(rs.getString("infor"));	
				p.setTYPE(rs.getString("type"));
				p.setIMAGE(rs.getString("image"));
				p.setSALENUM(rs.getInt("salenum"));
				p.setVIEWCOUNT(rs.getInt("viewcount"));
				
				//把对象添加到集合中取
				list.add(p);
			}
			
			//关闭
			JDBCUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 根据字段搜索总条数
	 */
	@Override
	public Integer findLuxuryByNameAllCount(String searchfield) {
		
		//定义获取的总条数
		Integer totalCount = 0;
		
		try {
			//获取数据库的连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select count(*) from luxury where lname "
					+ "like '%"+searchfield+"%'";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			//循环结果集
			while(rs.next()){
				totalCount = rs.getInt(1);
			}
			
			//关闭
			JDBCUtil.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return totalCount;
	}

	/**
	 * 根据字段搜索数据
	 * @param currentPage  当前页
	 * @param currentCount  每页的条数
	 * @param searchfield  搜索的字段
	 * @return
	 */
	@Override
	public List<Product> findLuxuryByName(int currentPage, int currentCount, String searchfield) {
		
		List<Product> list = new  ArrayList<>();
		
		try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select * from luxury where lname like ? limit ?,?";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setString(1, "%"+searchfield+"%");
			ps.setInt(2, (currentPage-1)*currentCount);
			ps.setInt(3, currentCount);
			
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			//循环结果集对象
			while(rs.next()){
				Product p = new Product();
				p.setLID(rs.getInt("lid"));
				p.setAID(rs.getInt("aid"));
				p.setLNAME(rs.getString("lname"));
				p.setPRICE(rs.getBigDecimal("price"));
				p.setINFOR(rs.getString("infor"));	
				p.setTYPE(rs.getString("type"));
				p.setIMAGE(rs.getString("image"));
				p.setSALENUM(rs.getInt("salenum"));
				p.setVIEWCOUNT(rs.getInt("viewcount"));
				
				//把对象添加到集合中取
				list.add(p);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public Product findLuxuryById(int lid) {
		
		//实例化集合
		List<Product> list = new ArrayList<>();
		
		try {
			//获取数据库的连接对象
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select * from luxury  where lid=?";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setInt(1, lid);
			
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			//循环
			while(rs.next()){
				Product p = new Product();
				p.setLID(rs.getInt("lid"));
				p.setAID(rs.getInt("aid"));
				p.setLNAME(rs.getString("lname"));
				p.setPRICE(rs.getBigDecimal("price"));
				p.setINFOR(rs.getString("infor"));	
				p.setTYPE(rs.getString("type"));
				p.setIMAGE(rs.getString("image"));
				p.setSALENUM(rs.getInt("salenum"));
				p.setVIEWCOUNT(rs.getInt("viewcount"));
				
				//把商品对象添加到集合中
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list.size()>0 ? list.get(0) : null;
	}

	@Override
	public boolean changeLuxuryNum(Order order) {
		/**
		 * 生成订单时，将商品库存数量减少
		 * @param orderItem
		 * @return
		 */
		int count = 1;
		try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			//编写sql
			String sql = "update luxury set restnum = restnum - ? where lid = ?";
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setInt(1,order.getNUM());
			ps.setInt(2,order.getLID());
			//执行修改
			count  = ps.executeUpdate();
			
			//关闭
			JDBCUtil.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return count > 0 ? true : false;
	}

	@Override
	public List<Object[]> getWeekHotLuxury() {
		/**
		 * 得到每周热卖商品
		 * @param orderItem
		 * @return
		 */
		List<Object[]> list = new ArrayList<>();
		try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			//编写sql
			String sql = "select LID,AID,LNAME,TYPE,IMAGE,sum(NUM) totalSaleNum\r\n" + 
					"from luxury natrual join orders using(LID)\r\n" + 
					"where order.date > DATE_SUB(NOW(),INTERVAL 7 DAY)\r\n" + 
					"group by LID\r\n" + 
					"order by totalSaleNum\r\n" + 
					"limit 0,3";
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			//执行查询
			ResultSet rs = ps.executeQuery();
			
			//循环
			while(rs.next()) {
				Object[] obj = new Object[]{};
				obj[0] = rs.getString(1);
				obj[1] = rs.getString(2);
				obj[2] = rs.getString(3);
				list.add(obj);	
			}
			//关闭数据库
			JDBCUtil.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
