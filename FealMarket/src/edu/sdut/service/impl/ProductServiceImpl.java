package edu.sdut.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import edu.sdut.dao.ProductDao;
import edu.sdut.dao.impl.ProductDaoImpl;
import edu.sdut.domain.AdBean;
import edu.sdut.domain.Product;
import edu.sdut.service.ProductService;
import edu.sdut.utils.RedisUtils;
import redis.clients.jedis.Jedis;

/**
 * 商品处理层实现类，实现接口ProductService
 * 
 * 广告处理层实现类，获取广告信息分为从Redis中获取和MySQL中获取
 * @author Vision_TXG
 *
 */
public class ProductServiceImpl implements ProductService {
	/**
	 * 获取今日推荐商品
	 */
	@Override
	public List<Product> getProductByDate() {
		ProductDao productDao = new ProductDaoImpl();
		
		return productDao.getProductByDate();
	}
	/**
	 * 获取热门商品
	 */
	@Override
	public List<Product> getProductByHot() {
		ProductDao productDao = new ProductDaoImpl();
		
		return productDao.getProductByHot();
	}

	/**
	 * 通过ID获取商品
	 */
	@Override
	public Product getById(String id) {
		ProductDao productDao = new ProductDaoImpl();
		
		return productDao.getById(id);
	}

	/**
	 * 按分类分页获取商品
	 */
	@Override
	public List<Product> getByPageList(int pageNumber, int cid) {
		
		ProductDao productDao = new ProductDaoImpl();
		return productDao.getByPageList(pageNumber,cid);
		
	}

	/**
	 * 按分类获取商品总数
	 */
	@Override
	public int getByPageSumdata(int cid) {
		ProductDao productDao = new ProductDaoImpl();
		return productDao.getByPageSumdata(cid);
	}
	/**
	 * 
	 * 获取广告,设计redis
	 */
	@Override
	public List<AdBean> getAd() {
		
		Jedis jedis = RedisUtils.getInstance();
		//获取key为ad_list的所有value值，即AdBean的String类型
		
		String val = jedis.get("redis_adBean_List");
		
		//判断Redis是否存在ad_list_val这个key
		//如果没有，直接调用getAdFromMysql获取数据，并将其存放到Redis，并设置过期时间
		if(val==null){
			List<AdBean> adBeanList = getAdFromMysql();
			String JsonString = JSON.toJSONString(adBeanList);
			//System.out.println(JsonString);
			jedis.set("redis_adBean_List", JsonString);
			jedis.expire("redis_adBean_List", 10000);
			return adBeanList;
			
		}
		
		//把val转化为Object
		//JSONObject obj  = JSON.parseObject(val);
		//System.out.println("------------");
		List<AdBean> ad = new ArrayList<AdBean>();
		ad = JSON.parseArray(val, AdBean.class);
		
		return ad;
	}
	
	/**
	 * 在mysql中获取广告信息
	 * @return
	 */
	public List<AdBean> getAdFromMysql(){
		ProductDao productDao = new ProductDaoImpl();
		return productDao.getAd();
	}
	
	/**
	 * 通过模糊查询获取商品信息
	 */
	@Override
	public List<Product> getBySearch(int pageNumber, String searchText) {
		ProductDao productDao = new ProductDaoImpl();
		return productDao.getByPageList(pageNumber,searchText);
	}
	/**
	 * 按模糊查询获取商品数据
	 */
	@Override
	public int getByPageSumdata(String searchText) {
		ProductDao productDao = new ProductDaoImpl();
		return productDao.getByPageSumdata(searchText);
	}

}
