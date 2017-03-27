package org.fkit.domain;

import java.util.Date;

public class Order {
	private int order_id;
	private String name;
	private String detail;
	private User myuser;
	private User youruser;
	private Date deal_date;
	private Date end_date;
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public User getMyuser() {
		return myuser;
	}
	public void setMyuser(User myuser) {
		this.myuser = myuser;
	}
	public User getYouruser() {
		return youruser;
	}
	public void setYouruser(User youruser) {
		this.youruser = youruser;
	}
	public Date getDeal_date() {
		return deal_date;
	}
	public void setDeal_date(Date deal_date) {
		this.deal_date = deal_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
}
