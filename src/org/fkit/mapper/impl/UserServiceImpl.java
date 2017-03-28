package org.fkit.mapper.impl;

import java.util.Map;

import org.fkit.domain.User;
import org.fkit.mapper.UserMapper;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public User login(Integer loginname, String password) {
		// TODO Auto-generated method stub
		return userMapper.findWithLoginnameAndPassword(loginname, password);
	}

	@Override
	public void updateUser(Map<String, Object> param) {
		// TODO Auto-generated method stub
		userMapper.update(param);
	}

	@Override
	public void insertUser(User user) {
		// TODO Auto-generated method stub
		userMapper.save(user);
	}

	@Override
	public User selectUser(int loginname) {
		// TODO Auto-generated method stub
		return userMapper.findByUserId(loginname);
	}
}
