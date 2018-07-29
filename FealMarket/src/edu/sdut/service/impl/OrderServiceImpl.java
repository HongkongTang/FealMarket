package edu.sdut.service.impl;

import java.util.List;

import edu.sdut.dao.OrderDao;
import edu.sdut.dao.impl.OrderDaoImpl;
import edu.sdut.domain.Address;
import edu.sdut.service.OrderService;

/**
 * 订单处理层实现类，实现接口OrderService
 * @author Vision_TXG
 *
 */
public class OrderServiceImpl implements OrderService {

	@Override
	public List<Address> getAddress(String username) {
		OrderDao orderDao = new OrderDaoImpl();
		return orderDao.getAddress(username);
	}

	@Override
	public boolean addAddress(Address addr) {
		OrderDao orderDao = new OrderDaoImpl();
		return orderDao.addAddress(addr);
	}

	@Override
	public boolean delAddress(String aid) {
		OrderDao orderDao = new OrderDaoImpl();
		return orderDao.delAddress(aid);
	}


}
