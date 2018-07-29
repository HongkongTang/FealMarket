package edu.sdut.domain;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * 购物车信息持久化类
 * @author Vision_TXG
 *
 */
public class Cart implements Serializable{

	//存购物项的集合
	private Map<String,CartItem> cartMap = new HashMap<String,CartItem>();
	//购物车的总金额
	private Double totalPrice;
	
	public Cart(){
		totalPrice = 0.0;				
	}
	//加入购物车
	public void addCart(CartItem item){
		//判断购物车中有无该商品，有的话就数量加一，无的话就添加购物项到集合
		if(cartMap.containsKey(item.getProduct().getId().toString())){
			cartMap.get(item.getProduct().getId().toString()).setCount(cartMap.get(item.getProduct().getId().toString()).getCount()+1);
			cartMap.get(item.getProduct().getId().toString()).getTPrice();
			totalPrice += cartMap.get(item.getProduct().getId().toString()).getProduct().getNet_price(); 
		}else{
			//System.out.println("++++++++++++++++======");
			cartMap.put(item.getProduct().getId().toString(), item);
			//System.out.println("+++++***************+======" + item.getProduct().getNet_price());
			totalPrice = totalPrice + item.getProduct().getNet_price();
			//System.out.println("+++++******+======");
		}
		//计算总金额
	}
	//从购物车中移除
	public void delFromCart(String pid){
		
		totalPrice -= cartMap.get(pid).getTPrice();
		cartMap.remove(pid);
	}
	//清空购物车
	public void clearCart(){
		cartMap.clear();
		totalPrice = 0.0;
	}
	public Map<String, CartItem> getCartMap() {
		return cartMap;
	}
	public void setCartMap(Map<String, CartItem> cartMap) {
		this.cartMap = cartMap;
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
	
}
