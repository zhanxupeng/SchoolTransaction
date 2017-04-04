package org.fkit.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.fkit.domain.Commodity;
import org.fkit.domain.Mydollar;
import org.fkit.domain.Order;
import org.fkit.domain.User;
import org.fkit.service.CommodityService;
import org.fkit.service.MydollarService;
import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MydollarController {

	@Autowired
	@Qualifier("mydollarService")
	private MydollarService mydollarService;
	
	@Autowired
	@Qualifier("commodityService")
	private CommodityService commodityService;
	
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@RequestMapping("/paydollar")
	public String paydollar(Mydollar mydollar,HttpServletRequest request,
			int commid,HttpSession session){
		Commodity commodity=commodityService.selectByCommid(commid);
		Mydollar thedollar=mydollarService.selectByIdAndPwd
								(mydollar.getDollarid(), mydollar.getDollarpwd());
		if(thedollar==null){
			request.setAttribute("message","账号或密码错误，请重新输入！");
			request.setAttribute("commid", commid);
			return "paydollar";
		}
		if(thedollar.getNum()<commodity.getBig_id()){
			request.setAttribute("message","账户余额不足，请选择其他账号！");
			request.setAttribute("commid", commid);
			return "paydollar";
		}
		thedollar.setNum(thedollar.getNum()-commodity.getBig_id());
		commodityService.deleteCommodity(commid);
		mydollarService.updateDollar(thedollar);
		
		User user=(User)session.getAttribute("user");
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
}
