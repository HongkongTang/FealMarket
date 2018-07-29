package edu.sdut.dao;

import edu.sdut.domain.User;

public interface UserDao {

	/**
	 * 通过Email，保存用户注册信息
	 * @param user 用户对象
	 * @return
	 */
	boolean saveByEmail(User user);

	/**
	 * 通过Phone，保存用户注册信息
	 * @param user 用户对象
	 * @return
	 */
	boolean saveByPhone(User user);

	/**
	 * 验证用户登陆的正确性
	 * @param username  用户名
	 * @param password	用户密码
	 * @return
	 */
	boolean CheckLogin(String username, String password);

}
