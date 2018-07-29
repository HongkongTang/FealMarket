package edu.sdut.web.servlet;

import edu.sdut.domain.AdBean;
import edu.sdut.domain.Product;
import edu.sdut.service.ProductService;
import edu.sdut.service.impl.ProductServiceImpl;
import edu.sdut.web.servlet.base.ServletBase;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * Servlet implementation class HomeServlet
 */
//@WebServlet("/home")
public class HomeServlet extends ServletBase {
	private static final long serialVersionUID = 1L;

	/**
	 * 请求转发，访问商城主界面，
	 * 使用同步的方式获取推荐商品的今日商品
	 */
	@Override
	public String index(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//System.out.println("------------");
		ProductService productService = new ProductServiceImpl();
		//调用ProductService方法获取推荐商品和热门商品
		List<Product> list_date = productService.getProductByDate();
		List<Product> list_hot = productService.getProductByHot();
		//System.out.println(list_date);
		//System.out.println(list_hot);
		//将获取的商品list放入request域中
		
		
		//获取广告内容
		List<AdBean> list_ad = productService.getAd();
		
		
		request.setAttribute("ad", list_ad);
		request.setAttribute("productByDate", list_date);
		request.setAttribute("productByHot", list_hot);
		
		return "/fe/jsp/home.jsp";
	}

}
