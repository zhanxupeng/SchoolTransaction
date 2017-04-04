package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.UpdateProvider;
import org.apache.ibatis.mapping.FetchType;
import org.fkit.domain.Commodity;
import org.fkit.mapper.provider.CommodityDynaSqlProvider;

public interface CommodityMapper {
	/*
	 * 根据big_class查询商品
	 */
	@Select("select * from commodity where big_class=#{big_class}")
	@Results({
		@Result(id=true,column="commid",property="commid"),
		@Result(column="name",property="name"),
		@Result(column="detail",property="detail"),
		@Result(column="picture",property="picture"),
		@Result(column="user_id",property="user",
		one=@One(
				select="org.fkit.mapper.UserMapper.findByUserId",
				fetchType=FetchType.EAGER)),
		@Result(column="end_date",property="end_date"),
		@Result(column="big_class",property="big_class"),
		@Result(column="big_id",property="big_id"),
		@Result(column="small_class",property="small_class"),
		@Result(column="small_id",property="small_id"),
		@Result(column="school",property="school")
	})
	List<Commodity> selectCommodityByBigClass(@Param("big_class")String big_class);
	/*
	 * 根据small_class查询商品
	 */
	@Select("select * from commodity where small_class=#{small_class}")
	@Results({
		@Result(id=true,column="commid",property="commid"),
		@Result(column="name",property="name"),
		@Result(column="detail",property="detail"),
		@Result(column="picture",property="picture"),
		@Result(column="user_id",property="user",
		one=@One(
				select="org.fkit.mapper.UserMapper.findByUserId",
				fetchType=FetchType.EAGER)),
		@Result(column="end_date",property="end_date"),
		@Result(column="big_class",property="big_class"),
		@Result(column="big_id",property="big_id"),
		@Result(column="small_class",property="small_class"),
		@Result(column="small_id",property="small_id"),
		@Result(column="school",property="school")
	})
	List<Commodity> selectCommodityBySmallClass(@Param("small_class")String small_class);
	/*
	 * 根据user_id查询
	 */
	@Select("select * from commodity where user_id=#{user_id}")
	@Results({
		@Result(id=true,column="commid",property="commid"),
		@Result(column="name",property="name"),
		@Result(column="detail",property="detail"),
		@Result(column="picture",property="picture"),
		@Result(column="user_id",property="user",
		one=@One(
				select="org.fkit.mapper.UserMapper.findByUserId",
				fetchType=FetchType.EAGER)),
		@Result(column="end_date",property="end_date"),
		@Result(column="big_class",property="big_class"),
		@Result(column="big_id",property="big_id"),
		@Result(column="small_class",property="small_class"),
		@Result(column="small_id",property="small_id"),
		@Result(column="school",property="school")
	})
	List<Commodity> selectCommodityByUserid(@Param("user_id")int user_id);
	/*
	 * 根据commid查询商品
	 */
	@Select("select * from commodity where commid =#{commid}")
	@Results({
		@Result(id=true,column="commid",property="commid"),
		@Result(column="name",property="name"),
		@Result(column="detail",property="detail"),
		@Result(column="picture",property="picture"),
		@Result(column="user_id",property="user",
		one=@One(
				select="org.fkit.mapper.UserMapper.findByUserId",
				fetchType=FetchType.EAGER)),
		@Result(column="end_date",property="end_date"),
		@Result(column="big_class",property="big_class"),
		@Result(column="big_id",property="big_id"),
		@Result(column="small_class",property="small_class"),
		@Result(column="small_id",property="small_id"),
		@Result(column="school",property="school")
	})
	Commodity selectCommodityByCommid(@Param("commid") int commid);
	/*
	 * 删除商品
	 */
	@Delete("delete from commodity where commid=#{commid}")
	void deleteCommodity(@Param("commid") int commid);
	/*
	 * 修改商品，动态修改
	 */
	@UpdateProvider(type=CommodityDynaSqlProvider.class,method="updateCommodity")
	void updateCommodity(Commodity commodity);
	/*
	 * 添加商品
	 */
	@InsertProvider(type=CommodityDynaSqlProvider.class,method="insertCommodity")
	void insertCommodity(Commodity commodity);
}
