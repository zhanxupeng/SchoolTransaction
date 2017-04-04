package org.fkit.service;

import org.fkit.domain.Mydollar;

public interface MydollarService {
	/*
	 * 查询用户名或者密码是否正确
	 */
	Mydollar selectByIdAndPwd(int dollarid,String dollarpwd);
	/*
	 * 修改余额
	 */
	void updateDollar(Mydollar mydollar);
}
