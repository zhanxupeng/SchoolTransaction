package org.fkit.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.UpdateProvider;
import org.fkit.domain.User;
import org.fkit.mapper.provider.UserDynaSqlProvider;
public interface UserMapper {
	
	//用于用户登录
	@Select("select * from myuser where loginname=#{loginname} and password=#{password}")
	User findWithLoginnameAndPassword(@Param("loginname")int loginname,@Param("password")String password);
	//用户注册，动态注册，没有的信息将不用插入
	@InsertProvider(type=UserDynaSqlProvider.class,method="insertUser")
	void save(User user);
	//动态修改
	@UpdateProvider(type=UserDynaSqlProvider.class,method="updateUser")
	void update(Map<String,Object> param);
}
