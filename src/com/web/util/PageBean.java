package com.web.util;

import java.util.List;
import com.web.entity.*;

/**
 * 分页工具类
 * @author HEEEEE
 *
 */

public class PageBean {
	private Integer currentPage; // 当前页码
	private Integer totalPage;	 // 总页数
	private Integer currentCount;// 每页条数
	private Integer totalCount;	 // 总条数
	
	private List<Product> luxuryList; // 商品数据信息
	
	private String category;		// 类别
	private String searchfild;		// 模糊搜索字段
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getTotalPage() {
		totalPage = (int)Math.ceil((totalCount * 1.0) / currentCount);
		
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
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public List<Product> getluxuryList() {
		return luxuryList;
	}
	public void setluxuryList(List<Product> LuxuryList) {
		luxuryList = LuxuryList;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSearchfild() {
		return searchfild;
	}
	public void setSearchfild(String searchfild) {
		this.searchfild = searchfild;
	}
}
