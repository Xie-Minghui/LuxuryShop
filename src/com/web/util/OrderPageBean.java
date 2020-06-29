package com.web.util;

import java.util.List;

import com.web.entity.Order;

public class OrderPageBean {
	private Integer currentPage; // 当前页码
	private Integer totalPage;	 // 总页数
	private Integer currentCount;// 每页条数
	private Integer totalCount;	 // 总条数

	private List<Order> OrderList; // 订单数据信息
	
	private String oid;			// 订单编号
	private String username;	// 订单拥有者姓名
	private Integer state;		// 订单状态
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getCurrentCount() {
		return currentCount;
	}
	public void setCurrentCount(Integer currentCount) {
		this.currentCount = currentCount;
	}
	public Integer getTotalCount() {
		totalPage = (int)Math.ceil((totalCount * 1.0) / currentCount);
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public List<Order> getOrderList() {
		return OrderList;
	}
	public void setOrderList(List<Order> orderList) {
		OrderList = orderList;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
}
