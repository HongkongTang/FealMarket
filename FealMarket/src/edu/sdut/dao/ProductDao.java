package edu.sdut.dao;

import java.util.List;

import edu.sdut.domain.AdBean;
import edu.sdut.domain.Product;

/**
 * 关于商品处理的dao层接口
 * @author Vision_TXG
 *
 */
public interface ProductDao {

	/**
	 * 按时间获取商品信息，
	 * 用于今日推荐功能
	 * 并以列表形式返回
	 * @return
	 */
	List<Product> getProductByDate();

	/**
	 * 按商品热度属性获取商品信息，
	 * 用于热门商品推荐功能
	 * 并以列表形式返回
	 * @return
	 */
	List<Product> getProductByHot();

	/**
	 * 通过商品的id，获取该商品信息
	 * @param id
	 * @return
	 */
	Product getById(String id);

	/**
	 * 按分类分页获取商品信息，
	 * 以列表形式返回
	 * @param pageNumber 当前要查找的页
	 * @param cid 要查找的类别
	 * @return
	 */
	List<Product> getByPageList(int pageNumber, int cid);

	/**
	 * 按分类，获取该分类下的所有数量
	 * @param cid  商品分类的编号
	 * @return
	 */
	int getByPageSumdata(int cid);

	/**
	 * 获取广告信息
	 * 以列表形式返回
	 * @return
	 */
	List<AdBean> getAd();

	/**
	 * 通过模糊查询和分页信息，获取查询的商品信息
	 * 以列表形式返回
	 * @param pageNumber  当前要查找的页码号
	 * @param searchText  模糊查询的信息
	 * @return
	 */
	List<Product> getByPageList(int pageNumber, String searchText);

	
	/**
	 * 通过模糊查询，获取查询到的总数量，用户分页操作
	 * @param searchText  模糊查询的信息
	 * @return
	 */
	int getByPageSumdata(String searchText);

}
