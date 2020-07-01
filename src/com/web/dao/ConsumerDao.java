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
	 * @param email
	 * @param password
	 * @return
	 */
	public Consumer login(String email,String pswd);
		
	//查询用户总量
	public Integer countAllConsumer();
}
