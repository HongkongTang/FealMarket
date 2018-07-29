package edu.sdut.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 商品信息Bean
 * @author Vision_TXG
 *
 */
public class Product implements Serializable {

	private Integer id ;//商品编号
	private String name;//商品名
	private Double net_price;//商品网上价
	private Double market_price;//商品市场价
	private String image;//商品图片
	private String des;//商品详细信息描述
	private Date pdate;//商品上架时间
	private String yn_hot;//商品是否是热门
	private String yn_under;//商品是否下架
	private int cid;//商品分类id编号
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getNet_price() {
		return net_price;
	}
	public void setNet_price(Double net_price) {
		this.net_price = net_price;
	}
	public Double getMarket_price() {
		return market_price;
	}
	public void setMarket_price(Double market_price) {
		this.market_price = market_price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public String getYn_hot() {
		return yn_hot;
	}
	public void setYn_hot(String yn_hot) {
		this.yn_hot = yn_hot;
	}
	public String getYn_under() {
		return yn_under;
	}
	public void setYn_under(String yn_under) {
		this.yn_under = yn_under;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}

	
	
	
}
