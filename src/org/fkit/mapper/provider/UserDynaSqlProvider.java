package org.fkit.mapper.provider;

import java.util.Map;

import org.apache.ibatis.jdbc.SQL;
import org.fkit.domain.User;

public class UserDynaSqlProvider {
	public String insertUser(User user){
		return new SQL(){
			{
				INSERT_INTO("user");
				VALUES("loginname", "#{loginname}");
				VALUES("password","#{password}");
				if(user.getUsername()!=null&&!user.getUsername().equals("")){
					VALUES("username","#{username}");
				}
				if(user.getSex()!=null&&!user.getSex().equals("")){
					VALUES("sex","#{sex}");
				}
				if(user.getEmail()!=null&&!user.getEmail().equals("")){
					VALUES("email","#{email}");
				}
				if(user.getPhone()!=null&&!user.getPhone().equals("")){
					VALUES("phone","#{phone}");
				}
				if(user.getCard_id()!=null&&!user.getCard_id().equals("")){
					VALUES("card_id","#{card_id}");
				}
				if(user.getDollar_id()!=null&&!user.getDollar_id().equals("")){
					VALUES("dollar_id","#{dollar_id}");
				}
				if(user.getFlag()!=0){
					VALUES("image","#{iamge}");
				}
			}
		}.toString();
	}
	//动态更新
	public String updateUser(Map<String, Object> param){
		return new SQL(){
			{
				UPDATE("user");
				if(param.get("password")!=null){
					SET(" password =#{password}");
				}
				if(param.get("username")!=null){
					SET(" username=#{username}");
				}
				if(param.get("sex")!=null){
					SET(" sex=#{sex}");
				}
				if(param.get("email")!=null){
					SET(" email=#{email}");
				}
				if(param.get("phone")!=null){
					SET(" phone=#{phone}");
				}
				if(param.get("card_id")!=null){
					SET(" card_id=#{card_id}");
				}
				if(param.get("dollar_id")!=null){
					SET(" dollar_id=#{dollar_id}");
				}
				if(param.get("flag")!=null){
					SET(" flag=#{flag}");
				}
				if(param.get("image")!=null){
					SET(" image=#{iamge}");
				}
				WHERE(" id=#{id}");
			}
		}.toString();
	}
	
	
	
	
	
	
	
	
	
	
}
