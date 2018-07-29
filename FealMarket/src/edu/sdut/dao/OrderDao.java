package edu.sdut.dao;

import java.util.List;

import edu.sdut.domain.Address;

/**
 * 订单dao层接口
 * @author Vision_TXG
 *
 */
public interface OrderDao {

	/**
	 * 根据用户名，获取其所有订单地址信息，以列表形式返回
	 * @param username
	 * @return
	 */
	List<Address> getAddress(String username);

	/**
	 * 新增订单地址信息
	 * @param addr
	 * @return
	 */
	boolean addAddress(Address addr);

	/**
	 * 根据地址id，删除用户地址信息
	 * @param aid
	 * @return
	 */
	boolean delAddress(String aid);




}
