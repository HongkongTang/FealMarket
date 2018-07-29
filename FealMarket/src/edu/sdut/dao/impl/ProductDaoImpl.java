package edu.sdut.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.sdut.constant.Constant;
import edu.sdut.dao.ProductDao;
import edu.sdut.domain.AdBean;
import edu.sdut.domain.Product;
import edu.sdut.utils.DBUtils;
/**
 * 商品处理Dao层实现类，实现接口ProductDao
 * 
 * @author Vision_TXG
 *
 */
public class ProductDaoImpl implements ProductDao{
	/**
	 * 按时间获取商品数据
	 */
	@Override
	public List<Product> getProductByDate() {
		List<Product> list = new ArrayList<Product>();
		Product p = null;
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "select * from product where yn_under='no' order by pdate desc limit 7";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			rs = ppst.executeQuery();
			while(rs.next()){
				p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setNet_price(rs.getDouble("net_price"));
				p.setMarket_price(rs.getDouble("market_price"));
				p.setImage(rs.getString("image"));
				p.setDes(rs.getString("des"));
				p.setPdate(rs.getDate("pdate"));
				p.setYn_hot(rs.getString("yn_hot"));
				p.setYn_under(rs.getString("yn_under"));
				p.setCid(rs.getInt("cid"));
				
				list.add(p);
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

	
	/**
	 * 获取热门的数据
	 */
	@Override
	public List<Product> getProductByHot() {
		List<Product> list = new ArrayList<Product>();
		Product p = null;
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "select * from product where yn_hot='yes' and yn_under='no' order by pdate desc limit 15";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			rs = ppst.executeQuery();
			while(rs.next()){
				p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setNet_price(rs.getDouble("net_price"));
				p.setMarket_price(rs.getDouble("market_price"));
				p.setImage(rs.getString("image"));
				p.setDes(rs.getString("des"));
				p.setPdate(rs.getDate("pdate"));
				p.setYn_hot(rs.getString("yn_hot"));
				p.setYn_under(rs.getString("yn_under"));
				p.setCid(rs.getInt("cid"));
				
				list.add(p);
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

	
	/**
	 * 通过id获取商品数据
	 */
	@Override
	public Product getById(String id) {
		int pid = Integer.parseInt(id);
		Product p = null;
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "select * from product where id=? and yn_under=? ";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, pid);
			ppst.setString(2, "no");
			rs = ppst.executeQuery();
			while(rs.next()){
				p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setNet_price(rs.getDouble("net_price"));
				p.setMarket_price(rs.getDouble("market_price"));
				p.setImage(rs.getString("image"));
				p.setDes(rs.getString("des"));
				p.setPdate(rs.getDate("pdate"));
				p.setYn_hot(rs.getString("yn_hot"));
				p.setYn_under(rs.getString("yn_under"));
				p.setCid(rs.getInt("cid"));
				
				return p;
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
		return p;
	}

	
	/**
	 * 按分类分页获取数据
	 */
	@Override
	public List<Product> getByPageList(int pageNumber, int cid) {
		List<Product> list = new ArrayList<Product>();
		Product p = null;
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "select * from product where yn_under='no' and cid=? limit ?,?";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, cid);
			ppst.setInt(2, (pageNumber-1)*Constant.PAGESUM);
			ppst.setInt(3, Constant.PAGESUM);
			rs = ppst.executeQuery();
			while(rs.next()){
				p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setNet_price(rs.getDouble("net_price"));
				p.setMarket_price(rs.getDouble("market_price"));
				p.setImage(rs.getString("image"));
				p.setDes(rs.getString("des"));
				p.setPdate(rs.getDate("pdate"));
				p.setYn_hot(rs.getString("yn_hot"));
				p.setYn_under(rs.getString("yn_under"));
				p.setCid(rs.getInt("cid"));
				
				list.add(p);
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

	/**
	 * 按分类获取数据总量
	 */
	@Override
	public int getByPageSumdata(int cid) {
		int sumdata = 0;
		Product p = null;
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "select count(*) from product where yn_under='no' and cid=?";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setInt(1, cid);
			rs = ppst.executeQuery();
			while(rs.next()){
				sumdata = rs.getInt(1);
				return sumdata;
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
		return sumdata;
	}

	@Override
	public List<AdBean> getAd() {
		List<AdBean> list = new ArrayList<AdBean>();
		AdBean ad = null;
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "select * from ad";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			rs = ppst.executeQuery();
			while(rs.next()){
				ad = new AdBean();
				ad.setId(rs.getInt("id"));
				ad.setName(rs.getString("name"));
				ad.setContent(rs.getString("content"));
				
				list.add(ad);
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

	/**
	 * 按模糊查询信息 、 分页获取商品数据
	 */
	@Override
	public List<Product> getByPageList(int pageNumber, String searchText) {
		List<Product> list = new ArrayList<Product>();
		Product p = null;
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "select * from product where yn_under='no' and concat(name,des) like ? limit ?,?";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, "%"+searchText+"%");
			ppst.setInt(2, (pageNumber-1)*Constant.PAGESUM);
			ppst.setInt(3, Constant.PAGESUM);
			rs = ppst.executeQuery();
			while(rs.next()){
				p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setNet_price(rs.getDouble("net_price"));
				p.setMarket_price(rs.getDouble("market_price"));
				p.setImage(rs.getString("image"));
				p.setDes(rs.getString("des"));
				p.setPdate(rs.getDate("pdate"));
				p.setYn_hot(rs.getString("yn_hot"));
				p.setYn_under(rs.getString("yn_under"));
				p.setCid(rs.getInt("cid"));
				
				list.add(p);
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
	
	
	/**
	 * 按模糊查询获取数据总量
	 */
	@Override
	public int getByPageSumdata(String searchText) {
		int sumdata = 0;
		Product p = null;
		Connection conn = null;
		PreparedStatement ppst = null;
		ResultSet rs = null;
		String sql = "select count(*) from product where yn_under='no' and concat(name,des) like ?";
		try {
			conn = DBUtils.getConnection();
			ppst = conn.prepareStatement(sql);
			ppst.setString(1, "%" + searchText + "%");
			rs = ppst.executeQuery();
			while(rs.next()){
				sumdata = rs.getInt(1);
				return sumdata;
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
		return sumdata;
	}

}
