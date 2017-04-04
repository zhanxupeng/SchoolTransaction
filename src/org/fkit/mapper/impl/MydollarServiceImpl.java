package org.fkit.mapper.impl;

import org.fkit.domain.Mydollar;
import org.fkit.mapper.MydollarMapper;
import org.fkit.service.MydollarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("mydollarService")
public class MydollarServiceImpl implements MydollarService{
	@Autowired
	private MydollarMapper mydollarMapper;
	@Override
	public Mydollar selectByIdAndPwd(int dollarid, String dollarpwd) {
		// TODO Auto-generated method stub
		return mydollarMapper.selectByIdAndPwd(dollarid, dollarpwd);
	}

	@Override
	public void updateDollar(Mydollar mydollar) {
		// TODO Auto-generated method stub
		mydollarMapper.updateDollar(mydollar);
	}

}
