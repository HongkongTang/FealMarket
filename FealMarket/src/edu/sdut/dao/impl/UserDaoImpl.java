package edu.sdut.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import edu.sdut.dao.UserDao;
import edu.sdut.domain.User;
import edu.sdut.utils.DBUtils;

/**
 * 用户处理dao层实现类，实现UserDao接口
 * @author Vision_TXG
 *
 */
public class UserDaoImpl implements UserDao{

	/**
	 * 保存通过邮箱注册的用户信息
	 */
	@Override
	public boolean saveByEmail(User user) {
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "insert into user(username,password,email) values(?,?,?)";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, user.getUsername());
			ppst.setString(2, user.getPassword());
			ppst.setString(3, user.getEmail());
			if(ppst.executeUpdate()>0)return true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(ppst!=null){
				try {
					ppst.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				ppst=null;
			}
		}
		return false;
	}

	/**
	 * 保存通过手机号注册信息
	 */
	@Override
	public boolean saveByPhone(User user) {
		System.out.println(user.getUsername()+"  "+user.getPassword());
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "insert into user(username,password,phone) values(?,?,?)";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, user.getUsername());
			ppst.setString(2, user.getPassword());
			ppst.setString(3, user.getPhone());
			
			if(ppst.executeUpdate()>0)return true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(ppst!=null){
				try {
					ppst.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				ppst=null;
			}
		}
		return false;
	}

	/**
	 * 验证用户登陆信息
	 */
	@Override
	public boolean CheckLogin(String username, String password) {
		
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "select * from user where username = ? and password = ?";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, username);
			ppst.setString(2, password);
			rs = ppst.executeQuery();
			
			while(rs.next()){
				return true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(ppst!=null){
				try {
					ppst.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				ppst=null;
			}
		}
		return false;
	}

}
