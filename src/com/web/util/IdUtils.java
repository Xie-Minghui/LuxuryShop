package com.web.util;

import java.util.UUID;

public class IdUtils {
	/**
	 * 获取主键字符串id
	 * @return
	 */
	public static String getUUID(){
		
		return UUID.randomUUID().toString();
	}
}
