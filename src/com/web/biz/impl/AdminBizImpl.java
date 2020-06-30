package com.web.biz.impl;

import com.web.biz.AdminBiz;
import com.web.dao.AdminDao;
import com.web.dao.impl.AdminDaoImpl;
import com.web.entity.Admin;

public class AdminBizImpl implements AdminBiz {
	
	AdminDao adminDao = new AdminDaoImpl();
	
	@Override
	public Admin login(String aname, String pswd) {
		return adminDao.login(aname, pswd);
	}

}
