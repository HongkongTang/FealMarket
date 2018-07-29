package edu.sdut.service;

import java.util.List;

import edu.sdut.domain.Address;
/**
 * 订单处理层接口
 * @author Vision_TXG
 *
 */
public interface OrderService {

	/**
	 * 根据用户名获取地址信息
	 * @param username  用户名
	 * @return
	 */
	List<Address> getAddress(String username);

	/**
	 * 添加地址信息
	 * @param addr 地址对象
	 * @return
	 */
	boolean addAddress(Address addr);

	/**
	 * 根据地址编号删除地址信息
	 * @param aid
	 * @return
	 */
	boolean delAddress(String aid);

}
