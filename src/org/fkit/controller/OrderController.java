package org.fkit.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.fkit.domain.Commodity;
import org.fkit.domain.Order;
import org.fkit.domain.User;
import org.fkit.service.CommodityService;
import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {

	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@Autowired
	@Qualifier("commodityService")
	private CommodityService commodityService;
	
	/*
	 * 添加订单
	 */
	@RequestMapping("/insertOrder")
	public String insertOrder(int commid,HttpSession session){
		User user=(User)session.getAttribute("user");
		Commodity commodity=commodityService.selectByCommid(commid);
		Order order=new Order();
		order.setName(commodity.getName());
		order.setDetail(commodity.getDetail());
		order.setMyuser(user);
		order.setYouruser(commodity.getUser());
		order.setDeal_date(new Date());
		order.setEnd_date(commodity.getEnd_date());
		orderService.insertOrder(order);
		return "redirect:/selectByuserId";
	}
	/*
	 * 查询订单
	 */
	@RequestMapping("/selectByuserId")
	public String selectByuserId(HttpSession session,HttpServletRequest request){
		User user=(User)session.getAttribute("user");
		List<Order> list=orderService.selectByMyuserId(user.getLoginname());
		request.setAttribute("list",list);
		return "selectByuserId";
	}
	/*
	 * 删除订单
	 */
	@RequestMapping("/deleteByCommid")
	public String deleteByCommid(int order_id){
		orderService.deleteOrder(order_id);
		return "redirect:/selectByuserId";
	}
	
	
	
	
	
	
	
	
}
