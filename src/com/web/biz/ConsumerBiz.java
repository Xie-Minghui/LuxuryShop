package com.web.biz;

import com.web.entity.Consumer;

/**
 * 用户业务逻辑接口
 * @author hkh
 *
 */
public interface ConsumerBiz {
	
	/**
	 * 注册方法
	 * @param consumer
	 * @return
	 */
	public boolean register(Consumer consumer);
	public Consumer login(String email,String pswd);
}
