package com.web.dao;
import com.web.entity.Consumer;
/**
 * 用户的数据访问层接口
 * 注意：接口中的方法只能定义
 * @author xmh
 *
 */
public interface ConsumerDao {
	
	/**
	 * 注册
	 * @param Consumer
	 * @return
	 */
	public boolean add(Consumer Consumer);
	
	/**
	 * 登录
	 * @param Consumername
	 * @param password
	 * @return
	 */
	public Consumer login(String Consumername,String password);
		
}
