package edu.sdut.domain;

import java.io.Serializable;

/**
 * 购物项持久化类
 * @author Vision_TXG
 *
 */
public class CartItem implements Serializable{

	private Product product;//商品
	private Integer count;//商品数量
	private Double price;//商品总价格
	
	//得到price = 数量*单价
	public Double getTPrice(){
		return price = this.product.getNet_price() * this.count;
	}
	public void setTPrice(){
		this.price = this.product.getNet_price() * this.count;
	}
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}
	
	
	
}
