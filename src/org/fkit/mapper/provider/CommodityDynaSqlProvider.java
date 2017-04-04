package org.fkit.mapper.provider;

import org.apache.ibatis.jdbc.SQL;
import org.fkit.domain.Commodity;

public class CommodityDynaSqlProvider {
	/*
	 *动态修改
	 */
	public String updateCommodity(Commodity commodity){
		return new SQL(){
			{
				UPDATE("commodity");
				if(commodity.getName()!=null){
					SET("name=#{name}");
				}
				if(commodity.getDetail()!=null){
					SET("detail=#{detail}");
				}
				if(commodity.getPicture()!=null){
					SET("picture=#{picture}");
				}
				if(commodity.getEnd_date()!=null){
					SET("end_date=#{end_date}");
				}
				if(commodity.getBig_id()!=0){
					SET("big_id=#{big_id}");
				}
				if(commodity.getSchool()!=null){
					SET("school=#{school}");
				}
				WHERE(" commid=#{commid}");
			}
		}.toString();
	}
	/*
	 * 动态添加
	 */
	public String insertCommodity(Commodity commodity){
		return new SQL(){
			{
				INSERT_INTO("commodity");
				VALUES("name", "#{name}");
				if(commodity.getDetail()!=null){
					VALUES("detail","#{detail}");
				}
				if(commodity.getPicture()!=null){
					VALUES("picture","#{picture}");
				}
				if(commodity.getUser().getCard_id()!=null){
					VALUES("user_id","#{user.loginname}");
				}
				if(commodity.getEnd_date()!=null){
					VALUES("end_date","#{end_date}");
				}
				if(commodity.getBig_class()!=null){
					VALUES("big_class","#{big_class}");
				}
				if(commodity.getBig_id()!=0){
					VALUES("big_id","#{big_id}");
				}
				if(commodity.getSmall_class()!=null){
					VALUES("small_class","#{small_class}");
				}
				if(commodity.getSmall_id()!=0){
					VALUES("small_id", "#{small_id}");
				}
				if(commodity.getSchool()!=null){
					VALUES("school","#{school}");
				}
			}
		}.toString();
	}
}
