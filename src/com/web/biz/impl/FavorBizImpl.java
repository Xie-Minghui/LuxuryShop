package com.web.biz.impl;

import java.util.List;

import com.web.biz.FavorBiz;
import com.web.dao.FavorDao;
import com.web.dao.impl.FavorDaoImpl;
import com.web.entity.Consumer;
import com.web.entity.Favor;

public class FavorBizImpl implements FavorBiz {
	FavorDao fd = new FavorDaoImpl();
	
	@Override
	public boolean addFavor(Favor favor) {
		return fd.addFavor(favor);
	}

	@Override
	public boolean deleFavorByCIDAndLID(Integer CID, Integer LID) {
		return fd.deleFavorByCIDAndLID(CID, LID);
	}

	@Override
	public List<Favor> findFavorByConsumer(Consumer consumer) {
		return fd.findFavorByConsumer(consumer);
	}

}
