package com.web.biz;

import java.util.List;

import com.web.entity.Consumer;
import com.web.entity.Favor;

public interface FavorBiz {
	public boolean addFavor(Favor favor);
	public boolean deleFavorByCIDAndLID(Integer CID, Integer LID);
	public List<Favor> findFavorByConsumer(Consumer consumer);
}
