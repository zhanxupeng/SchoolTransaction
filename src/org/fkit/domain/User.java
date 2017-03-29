package org.fkit.domain;

import java.io.Serializable;
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer loginname;
	private String password;
	private String username;
	private String sex;
	private String email;
	private String phone;
	private String card_id;
	private String dollar_id;
	private int flag;
	private String image;
	@Override
	public String toString(){
		StringBuilder s=new StringBuilder();
		s.append(loginname);
		s.append(",");
		s.append(password);
		s.append(",");
		s.append(username);
		s.append(",");
		s.append(sex);
		s.append(",");
		s.append(email);
		s.append(",");
		s.append(phone);
		s.append(",");
		s.append(card_id);
		s.append(",");
		s.append(dollar_id);
		s.append(",");
		s.append(flag);
		s.append(",");
		s.append(image);
		return s.toString();
	}
	public int getLoginname() {
		return loginname;
	}
	public void setLoginname(int loginname) {
		this.loginname = loginname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCard_id() {
		return card_id;
	}
	public void setCard_id(String card_id) {
		this.card_id = card_id;
	}
	public String getDollar_id() {
		return dollar_id;
	}
	public void setDollar_id(String dollar_id) {
		this.dollar_id = dollar_id;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
}
