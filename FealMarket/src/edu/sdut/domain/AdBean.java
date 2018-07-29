package edu.sdut.domain;

import java.io.Serializable;

/**
 * 广告信息持久化类
 * @author Vision_TXG
 *
 */
public class AdBean implements Serializable {
	
	private Integer id;//广告id
	private String name;//广告标题名字
	private String content;//广告内容
	
	public AdBean(){
		
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	
}
