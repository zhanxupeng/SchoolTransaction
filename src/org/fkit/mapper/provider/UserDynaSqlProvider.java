package org.fkit.mapper.provider;

import org.apache.ibatis.jdbc.SQL;
import org.fkit.domain.User;

public class UserDynaSqlProvider {
	public String insertUser(User user){
		return new SQL(){
			{
				INSERT_INTO("myuser");
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
					VALUES("flag","#{flag}");
				}
				if(user.getImage()!=null&&!user.getImage().equals("")){
					VALUES("image","#{image}");
				}
			}
		}.toString();
	}
	//动态更新
	public String updateUser(User user){
		return new SQL(){
			{
				UPDATE("myuser");
				if(user.getPassword()!=null){
					SET(" password =#{password}");
				}
				if(user.getUsername()!=null){
					SET(" username=#{username}");
				}
				if(user.getSex()!=null){
					SET(" sex=#{sex}");
				}
				if(user.getEmail()!=null){
					SET(" email=#{email}");
				}
				if(user.getPhone()!=null){
					SET(" phone=#{phone}");
				}
				if(user.getCard_id()!=null){
					SET(" card_id=#{card_id}");
				}
				if(user.getDollar_id()!=null){
					SET(" dollar_id=#{dollar_id}");
				}
					SET(" flag=#{flag}");
				if(user.getImage()!=null){
					SET(" image=#{image}");
				}
				WHERE(" loginname=#{loginname}");
			}
		}.toString();
	}
}
