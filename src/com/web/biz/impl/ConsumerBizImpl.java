package com.web.biz.impl;

import com.web.biz.ConsumerBiz;
import com.web.dao.ConsumerDao;
import com.web.dao.impl.ConsumerDaoImpl;
import com.web.entity.Consumer;

/**
 * 用户业务逻辑层实现
 * @author hkh
 *
 */
public class ConsumerBizImpl implements ConsumerBiz {
	
	ConsumerDao cd = new ConsumerDaoImpl();
	
	@Override
	public boolean register(Consumer consumer) {
		// 调用数据访问添加
		return cd.add(consumer);
	}
	@Override
	public Consumer login(String email, String pswd) {
		
		//调用数据访问层的登录方法
		return cd.login(email, pswd);
	}
	@Override
	public Integer countAllConsumer() {
		return cd.countAllConsumer();
	}

}
