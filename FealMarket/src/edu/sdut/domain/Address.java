package edu.sdut.domain;

/**
 * 用户收货地址信息持久化类
 * @author Vision_TXG
 *
 */
public class Address {
	
	private Integer id;//编号
	private String username;//订单人用户名
	private String name;//收件人姓名
	private String phone;//收件人电话
	private String address;//收件人地址
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
