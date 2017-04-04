package org.fkit.mapper.impl;

import java.util.List;

import org.fkit.domain.Order;
import org.fkit.mapper.OrderMapper;
import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("orderService")
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderMapper orderMapper;
	@Override
	public void insertOrder(Order order) {
		// TODO Auto-generated method stub
		orderMapper.saveOrder(order);
	}

	@Override
	public void deleteOrder(int order_id) {
		// TODO Auto-generated method stub
		orderMapper.removeOrder(order_id);
	}

	@Override
	public List<Order> selectByMyuserId(int myuser_id) {
		// TODO Auto-generated method stub
		return orderMapper.selectByMyuserId(myuser_id);
	}

}
