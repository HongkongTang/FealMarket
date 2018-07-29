package edu.sdut.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.sdut.dao.OrderDao;
import edu.sdut.domain.Address;
import edu.sdut.domain.Product;
import edu.sdut.utils.DBUtils;

/**
 * 订单dao层实现类，实现OrderDao接口
 * @author Vision_TXG
 *
 */
public class OrderDaoImpl implements OrderDao {

	@Override
	public List<Address> getAddress(String username) {
		List<Address> list = new ArrayList<Address>();
		Address addr = null;
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "select * from address where username=?";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, username);
			rs = ppst.executeQuery();
			while(rs.next()){
				addr = new Address();
				addr.setId(rs.getInt("id"));
				addr.setName(rs.getString("name"));
				addr.setUsername(rs.getString("username"));
				addr.setPhone(rs.getString("phone"));
				addr.setAddress(rs.getString("address"));
				list.add(addr);
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
		return list;
	}

	@Override
	public boolean addAddress(Address addr) {
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "insert into address(name,phone,address,username) values(?,?,?,?)";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, addr.getUsername());
			ppst.setString(2, addr.getPhone());
			ppst.setString(3, addr.getAddress());
			ppst.setString(4, addr.getUsername());
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

	@Override
	public boolean delAddress(String aid) {
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "delete  from address where id=?";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, Integer.parseInt(aid));
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

}
