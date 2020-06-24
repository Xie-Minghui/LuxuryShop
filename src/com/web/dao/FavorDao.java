package com.web.dao;

import java.util.List;

import com.web.entity.Consumer;
import com.web.entity.Favor;

public interface FavorDao {
	public boolean addFavor(Favor favor);
	public boolean deleFavorByCIDAndLID(Integer CID, Integer LID);
	public List<Favor> findFavorByConsumer(Consumer consumer);
}
