package org.fkit.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Commodity {
	private int commid;
	private String name;
	private String detail;
	private String picture;
	private User user;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date end_date;
	private String big_class;
	private int big_id;
	private String small_class;
	private int small_id;
	private String school;
	public int getCommid() {
		return commid;
	}
	public void setCommid(int commid) {
		this.commid = commid;
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
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getBig_class() {
		return big_class;
	}
	public void setBig_class(String big_class) {
		this.big_class = big_class;
	}
	public int getBig_id() {
		return big_id;
	}
	public void setBig_id(int big_id) {
		this.big_id = big_id;
	}
	public String getSmall_class() {
		return small_class;
	}
	public void setSmall_class(String small_class) {
		this.small_class = small_class;
	}
	public int getSmall_id() {
		return small_id;
	}
	public void setSmall_id(int small_id) {
		this.small_id = small_id;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
}
