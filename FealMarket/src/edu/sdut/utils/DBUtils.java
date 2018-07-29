package edu.sdut.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * JDBC建立获取连接的工具类
 * @author Vision_TXG
 *
 */
public class DBUtils {
	//驱动
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	//SQL用户名
	private static final String USERANME = "root";
	//密码
	private static final String PASSWORD = "root";
	//地址
	private static final String URL = "JDBC:mysql://127.0.0.1:3306/fealmarket";
	
	private static Connection con = null;
	
	static{
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() throws SQLException{
		if(con==null){
			con = DriverManager.getConnection(URL, USERANME, PASSWORD);
		}
		return con;
	}
}
