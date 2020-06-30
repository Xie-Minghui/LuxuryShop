package com.web.dao.impl;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.web.dao.ProductDao;
import com.web.entity.OrderItem;
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
				p.setSIZE(rs.getString("size"));
				p.setWEIGHT(rs.getBigDecimal("weight"));
				p.setCOLOR(rs.getString("color"));
				
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
				p.setSIZE(rs.getString("size"));
				p.setWEIGHT(rs.getBigDecimal("weight"));
				p.setCOLOR(rs.getString("color"));
				
				
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
				p.setSIZE(rs.getString("size"));
				p.setWEIGHT(rs.getBigDecimal("weight"));
				p.setCOLOR(rs.getString("color"));
				p.setRESTNUM(rs.getInt("restnum"));
				
				//把商品对象添加到集合中
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list.size()>0 ? list.get(0) : null;
	}

	@Override
	public boolean changeLuxuryNum(OrderItem orderItem) {
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
			String sql = "update luxury set restnum = restnum - ? , salenum = salenum + ? where lid = ?";
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setInt(1,orderItem.getNUM());
			ps.setInt(2,orderItem.getNUM());
			ps.setInt(3,orderItem.getLID());
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
	public List<Product> getHotLuxury() {
		/**
		 * 得到每周热卖商品
		 * @param orderItem
		 * @return
		 */
		List<Product> list = new ArrayList<>();
		try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			//编写sql
			String sql = "select * from luxury order by salenum desc limit 0,4";
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
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
				p.setSIZE(rs.getString("size"));
				p.setWEIGHT(rs.getBigDecimal("weight"));
				p.setCOLOR(rs.getString("color"));
				p.setRESTNUM(rs.getInt("restnum"));
				
				//把商品对象添加到集合中
				list.add(p);
			}
			//关闭数据库
			JDBCUtil.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<Product> findLuxuryByPrice(int currentPage, int currentCount, BigDecimal max, BigDecimal min) {
		List<Product> list = new  ArrayList<>();
				
		try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select * from luxury where price >= ? and price <= ? limit ?,?";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setBigDecimal(1, min);
			ps.setBigDecimal(2, max);
			ps.setInt(3, (currentPage-1)*currentCount);
			ps.setInt(4, currentCount);
			
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
				p.setSIZE(rs.getString("size"));
				p.setWEIGHT(rs.getBigDecimal("weight"));
				p.setCOLOR(rs.getString("color"));
				
				
				//把对象添加到集合中取
				list.add(p);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public Integer findLuxuryByPriceAllCount(BigDecimal max, BigDecimal min) {
		//定义获取的总条数
		Integer totalCount = 0;
		
		try {
			//获取数据库的连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select count(*) from luxury where price >= ? and price <= ?";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setBigDecimal(1, min);
			ps.setBigDecimal(2, max);
			
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

	@Override
	public List<Product> findLuxuryByCategory(String category) {
		List<Product> list = new  ArrayList<>();
		
		try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select * from luxury where type = ?";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setString(1, category);
			
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
				p.setSIZE(rs.getString("size"));
				p.setWEIGHT(rs.getBigDecimal("weight"));
				p.setCOLOR(rs.getString("color"));
				
				//把对象添加到集合中取
				list.add(p);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<Product> findTheNewLuxury() {
		List<Product> list = new  ArrayList<>();
		
		try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "select * from luxury order by date desc limit 0,8";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
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
				p.setSIZE(rs.getString("size"));
				p.setWEIGHT(rs.getBigDecimal("weight"));
				p.setCOLOR(rs.getString("color"));
				
				//把对象添加到集合中取
				list.add(p);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public boolean addLuxury(Product luxury) {
		//定义影响行数的变量
		int count = 0;
		
		try {
			//获取数据库连接对象
			Connection conn = JDBCUtil.getConnectinon();
			
			//编写sql
			String sql = "insert into luxury (aid,lname,"
					+ "price,restnum,type,date,infor,image,"
					+ "salenum,viewcount,size,weight,color)  "
					+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setInt(1, luxury.getAID());
			ps.setString(2, luxury.getLNAME());
			ps.setBigDecimal(3, luxury.getPRICE());
			ps.setInt(4, luxury.getRESTNUM());
			ps.setString(5, luxury.getTYPE());
			ps.setDate(6, new Date(new java.util.Date().getTime()));
			ps.setString(7, luxury.getINFOR());
			ps.setString(8, luxury.getIMAGE());
			ps.setInt(9, 0);
			ps.setInt(10, 0);
			ps.setString(11, luxury.getSIZE());
			ps.setBigDecimal(12, luxury.getWEIGHT());
			ps.setString(13, luxury.getCOLOR());
			
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

	@Override
	public boolean changeLuxuryInfo(Product luxury) {
		int count = 1;
		try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			//编写sql
			String sql = "update luxury set "
					+ "lname = ? "
					+ ", price = ? "
					+ ", restnum = ? "
					+ ", type = ? "
					+ ", infor = ? "
					+ ", size = ? "
					+ ", weight = ? "
					+ ", color = ?"
					+ "where lid = ?";
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setString(1, luxury.getLNAME());
			ps.setBigDecimal(2, luxury.getPRICE());
			ps.setInt(3, luxury.getRESTNUM());
			ps.setString(4, luxury.getTYPE());
			ps.setString(5, luxury.getINFOR());
			ps.setString(6, luxury.getSIZE());
			ps.setBigDecimal(7, luxury.getWEIGHT());
			ps.setString(8, luxury.getCOLOR());
			ps.setInt(9, luxury.getLID());
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
	public boolean deleLuxuryById(Integer lid) {
		int count = 1;
		try {
			//获取数据库连接
			Connection conn = JDBCUtil.getConnectinon();
			//编写sql
			String sql = "update luxury set restnum = 0 where lid = ?";
			//编译sql
			PreparedStatement ps = conn.prepareStatement(sql);
			
			//设置参数
			ps.setInt(1, lid);
			//执行修改
			count  = ps.executeUpdate();
			
			//关闭
			JDBCUtil.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return count > 0 ? true : false;
	}

}
