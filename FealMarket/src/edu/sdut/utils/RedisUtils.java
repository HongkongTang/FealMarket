package edu.sdut.utils;

import edu.sdut.constant.Constant;
import redis.clients.jedis.Jedis;

/**
 * 单例模式获取Redis对象的工具类
 * @author Vision_TXG
 *
 */
public class RedisUtils {

	private static Jedis jedis = null;
	
	public static Jedis getInstance(){
		if(jedis==null){
			jedis = new Jedis(Constant.REDIS_ADDR,Constant.REDIS_PORT);
		}
		return jedis;
	}
}
