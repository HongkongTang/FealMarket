package edu.sdut.service.impl;

import edu.sdut.dao.UserDao;
import edu.sdut.dao.impl.UserDaoImpl;
import edu.sdut.domain.User;
import edu.sdut.service.UserService;

/**
 * 用户处理控制层实现类，实现UserService接口
 * @author Vision_TXG
 *
 */
public class UserServiceImpl implements UserService{

	/**
	 * 保存通过邮箱注册信息
	 */
	@Override
	public boolean registByEmail(User user) {
		UserDao userDao = new UserDaoImpl();
		
		return userDao.saveByEmail(user);
	}

	/**
	 * 保存通过手机号注册的信息
	 */
	@Override
	public boolean registByPhone(User user) {
		UserDao userDao = new UserDaoImpl();
		
		return userDao.saveByPhone(user);
	}

	@Override
	public boolean LoginByName(String username, String password) {
		
		UserDao userDao = new UserDaoImpl();
		
		return userDao.CheckLogin(username,password);
	}

}
