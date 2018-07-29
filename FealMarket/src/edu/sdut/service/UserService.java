package edu.sdut.service;

import edu.sdut.domain.User;

public interface UserService {
	/**
	 * 通过Email，保存用户注册信息
	 * @param user 用户对象
	 * @return
	 */
	boolean registByEmail(User user);

	/**
	 * 通过Phone，保存用户注册信息
	 * @param user 用户对象
	 * @return
	 */
	boolean registByPhone(User user);

	/**
	 * 验证用户登陆的正确性
	 * @param username  用户名
	 * @param password	用户密码
	 * @return
	 */
	boolean LoginByName(String username, String password);
}
