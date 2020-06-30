package com.web.dao;

import com.web.entity.Admin;

public interface AdminDao {
	public Admin login(String aname,String pswd);
}
