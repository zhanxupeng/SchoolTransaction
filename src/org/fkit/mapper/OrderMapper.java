package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.FetchType;
import org.fkit.domain.Order;

public interface OrderMapper {
	/*
	 * 删除订单
	 */
	@Delete("delete from myorder where order_id=#{order_id}")
	void removeOrder(@Param("order_id") int order_id);
	/*
	 * 添加订单
	 */
	@Insert("insert into myorder(name,detail,myuser_id,youruser_id,deal_date,end_date)"
			+ " values(#{name},#{detail},#{myuser.loginname},#{youruser.loginname},#{deal_date},#{end_date})")
	@Options(useGeneratedKeys=true,keyProperty="order_id")
	void saveOrder(Order order);
	/*
	 * 查询订单，按用户id查询
	 */
	@Select("select * from myorder where myuser_id=#{myuser_id}")
	@Results({
		@Result(id=true,column="order_id",property="order_id"),
		@Result(column="name",property="name"),
		@Result(column="detail",property="detail"),
		@Result(column="myuser_id",property="myuser",
		one=@One(
				select="org.fkit.mapper.UserMapper.findByUserId",
				fetchType=FetchType.EAGER)),
		@Result(column="youruser_id",property="youruser",
		one=@One(
				select="org.fkit.mapper.UserMapper.findByUserId",
				fetchType=FetchType.EAGER)),
		@Result(column="deal_date",property="deal_date"),
		@Result(column="end_date",property="end_date")
	})
	List<Order> selectByMyuserId(@Param("myuser_id") int myuser_id);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
