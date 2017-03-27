package org.fkit.service;

import java.util.Map;

import org.fkit.domain.User;

public interface UserService {
	//用于用户登录
	User login(Integer loginname,String password);
	//用于修改用户信息
	void updateUser(Map<String, Object> param);
	//用户添加用户信息
	void insertUser(User user);
}
