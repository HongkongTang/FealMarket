package edu.sdut.domain;

import java.io.Serializable;
import java.util.List;

/**
 * 分页所需的属性Bean
 * @author Vision_TXG
 *
 * @param <T>
 */
public class PageBean<T> implements Serializable{

	private List<T> list;//当前页数据列表
	private Integer pageNumber;//当前页页码
	private Integer pageTotal;//总页数 = 总商品数/一页数据量
	
	
	public PageBean() {
		super();
	}
	
	public PageBean(Integer pageNumber) {
		super();
		this.pageNumber = pageNumber;
	}

	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public Integer getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
	}
	public Integer getPageTotal() {
		return pageTotal;
	}
	public void setPageTotal(Integer pageTotal) {
		this.pageTotal = pageTotal;
	}
	
}
