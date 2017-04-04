package org.fkit.service;

import java.util.List;

import org.fkit.domain.Order;

public interface OrderService {
	/*
	 * 添加订单
	 */
	void insertOrder(Order order);
	/*
	 * 删除订单
	 */
	void deleteOrder(int order_id);
	/*
	 * 查询订单
	 */
	List<Order> selectByMyuserId(int myuser_id);
}
