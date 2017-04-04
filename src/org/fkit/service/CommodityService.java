package org.fkit.service;

import java.util.List;

import org.fkit.domain.Commodity;

public interface CommodityService {
	//根据big_class查询
	List<Commodity> selectByBigClass(String big_class);
	//根据small_class查询
	List<Commodity> selectBySmallClass(String small_class );
	//根据user_id查询商品
	List<Commodity> selectByUserid(int user_id);
	//根据commid查询商品
	Commodity selectByCommid(int commid);
	//修改商品
	void updateCommodity(Commodity commodity);
	//删除商品
	void deleteCommodity(int commid);
	//添加商品
	void insertCommodity(Commodity commodity);
}
