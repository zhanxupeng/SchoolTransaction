package org.fkit.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Mydollar;

public interface MydollarMapper {
	/*
	 * 查询账户或密码是否正确
	 */
	@Select("select * from mydollar where dollarid=#{dollarid} and dollarpwd=#{dollarpwd}")
	Mydollar selectByIdAndPwd(@Param("dollarid") int dollarid,
			@Param("dollarpwd") String dollarpwd);
	/*
	 * 修改余额
	 */
	@Update("update mydollar set num=#{num} where dollarid=#{dollarid}")
	void updateDollar(Mydollar mydollar);
	
}
