package org.fkit.mapper.impl;

import java.util.List;

import org.fkit.domain.Commodity;
import org.fkit.mapper.CommodityMapper;
import org.fkit.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("commodityService")
public class CommodityServiceImpl implements CommodityService{

	@Autowired
	private CommodityMapper commodityMapper;
	@Override
	public List<Commodity> selectByBigClass(String big_class) {
		// TODO Auto-generated method stub
		return commodityMapper.selectCommodityByBigClass(big_class);
	}

	@Override
	public List<Commodity> selectBySmallClass(String small_class) {
		// TODO Auto-generated method stub
		return commodityMapper.selectCommodityBySmallClass(small_class);
	}

	@Override
	public List<Commodity> selectByUserid(int user_id) {
		// TODO Auto-generated method stub
		return commodityMapper.selectCommodityByUserid(user_id);
	}

	@Override
	public Commodity selectByCommid(int commid) {
		// TODO Auto-generated method stub
		return commodityMapper.selectCommodityByCommid(commid);
	}

	@Override
	public void updateCommodity(Commodity commodity) {
		// TODO Auto-generated method stub
		commodityMapper.updateCommodity(commodity);
	}

	@Override
	public void deleteCommodity(int commid) {
		// TODO Auto-generated method stub
		commodityMapper.deleteCommodity(commid);
	}

	@Override
	public void insertCommodity(Commodity commodity) {
		// TODO Auto-generated method stub
		commodityMapper.insertCommodity(commodity);
	}

}
