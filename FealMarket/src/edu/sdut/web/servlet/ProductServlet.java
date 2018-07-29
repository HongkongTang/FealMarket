package edu.sdut.web.servlet;

import edu.sdut.constant.Constant;
import edu.sdut.domain.PageBean;
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
 * 处理商品有关的数据
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends ServletBase {
	private static final long serialVersionUID = 1L;

	/**
	 * 通过id查询商品
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String getById(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//通过id获取商品详细信息
		String id = request.getParameter("pid");
		if(id!=null&&id.length()>0){
			ProductService productService = new ProductServiceImpl();
			Product product = productService.getById(id);
			if(product!=null){
				
				request.setAttribute("product", product);
				return "/fe/jsp/product_info.jsp";
				
			}else{
				request.setAttribute("msg", "您要找的商品消失了！");
				return "/fe/jsp/msg.jsp";
			}
		}else{
			request.setAttribute("msg", "你好，您两次输入的密码不一样，请重新输入！");
			return "/fe/jsp/msg.jsp";
		}
		
	}
	/**
	 * 按分类分页查询商品
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String getByPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ProductService productService = new ProductServiceImpl();
		//获得页码号和分类号
		int pageNumber = 1;
		try{
			pageNumber = Integer.parseInt(request.getParameter("pageNum"));
			//System.out.println(pageNumber);
		}catch(Exception e){
			//e.printStackTrace();
		}
		int cid = 1;
		try{
			cid = Integer.parseInt(request.getParameter("cid"));
		}catch(Exception e){
			
		}
		
		//创建pageBean
		PageBean<Product> pageBean = new PageBean<Product>(pageNumber);
		//获取数据List
		List<Product> list= productService.getByPageList(pageNumber,cid);
		
		pageBean.setList(list);
		
		//获取总页数，总数据量
		int sumdata = productService.getByPageSumdata(cid);
		int sumpage = (int)sumdata/Constant.PAGESUM;
		if(sumdata%Constant.PAGESUM!=0){
			sumpage++;
		}
		pageBean.setPageTotal(sumpage);
		//System.out.println(pageNumber + " " + sumdata + " " +sumpage);
		request.setAttribute("pageBean", pageBean);
		return "/fe/jsp/search.jsp";
	}
	
	/**
	 * 模糊查询,分页
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String search(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String searchText = request.getParameter("index_none_header_sysc");
		
		ProductService productService = new ProductServiceImpl();
		//获得页码号和分类号
		int pageNumber = 1;
		try{
			pageNumber = Integer.parseInt(request.getParameter("pageNum"));
			//System.out.println(pageNumber);
		}catch(Exception e){
			//e.printStackTrace();
		}
		
		//创建pageBean
		PageBean<Product> pageBean = new PageBean<Product>(pageNumber);
		//获取数据List
		List<Product> list= productService.getBySearch(pageNumber,searchText);
		
		pageBean.setList(list);
		
		//获取总页数，总数据量
		int sumdata = productService.getByPageSumdata(searchText);
		int sumpage = (int)sumdata/Constant.PAGESUM;
		if(sumdata%Constant.PAGESUM!=0){
			sumpage++;
		}
		pageBean.setPageTotal(sumpage);
		//System.out.println(pageNumber + " " + sumdata + " " +sumpage);
		request.setAttribute("pageBean", pageBean);
		return "/fe/jsp/searchText.jsp";
		
	}

}
