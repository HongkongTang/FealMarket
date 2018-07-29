package edu.sdut.web.servlet;

import edu.sdut.domain.Cart;
import edu.sdut.domain.CartItem;
import edu.sdut.domain.Product;
import edu.sdut.service.ProductService;
import edu.sdut.service.impl.ProductServiceImpl;
import edu.sdut.web.servlet.base.ServletBase;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 处理购物车传过来的信息数据
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends ServletBase {
	private static final long serialVersionUID = 1L;

	/**
	 * 加入购物车
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
    public String addCart(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	//System.out.println( "-------------------");
    	//添加购物车，创建购物项
    	CartItem cartItem = new CartItem();
    	
    	//获得商品id
    	String pid = request.getParameter("pid");
    	//System.out.println(pid + "-------------------");
    	//通过id获得该商品
    	ProductService productService = new ProductServiceImpl();
    	Product p = productService.getById(pid);
    	//System.out.println(p.toString() + "-------------------");
    	
    	cartItem.setProduct(p);
    	cartItem.setCount(1);
    	cartItem.setTPrice();
    	//System.out.println(cartItem.getProduct() + " " + cartItem.getCount() + " "+"-------------------");
    	Cart cart = null;
    	
    	HttpSession session = request.getSession();
    	//System.out.println(session.getAttribute("cart"));
    	if(session.getAttribute("cart")!=null){
    		cart = (Cart)session.getAttribute("cart");
    	}else{
    		cart = new Cart();
    	}
    	//System.out.println("before");
    	cart.addCart(cartItem);
    	//System.out.println("before");
    	session.setAttribute("cart", cart);
    	
    	
    	//System.out.println(cart + "-------------------");
    	response.sendRedirect("/FealMarket/fe/jsp/shopcart.jsp");
    	return null;
    }
    
    /**
     * 清空购物车
     */
    public String clear(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
    	Cart cart = null;
    	
    	HttpSession session = request.getSession();
    	//System.out.println(session.getAttribute("cart"));
    	if(session.getAttribute("cart")!=null){
    		cart = (Cart)session.getAttribute("cart");
    	}else{
    		cart = new Cart();
    	}
    	cart.clearCart();
    	session.setAttribute("cart", cart);

    	response.sendRedirect("/FealMarket/fe/jsp/shopcart.jsp");
    	return null;
    }
    
    /**
     * 删除指定的购物项
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    public String delFromCart(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
    	Cart cart = null;
    	
    	HttpSession session = request.getSession();
    	//System.out.println(session.getAttribute("cart"));
    	if(session.getAttribute("cart")!=null){
    		cart = (Cart)session.getAttribute("cart");
    	}else{
    		cart = new Cart();
    	}
    	String pid = request.getParameter("pid");
    	cart.delFromCart(pid);
    	session.setAttribute("cart", cart);

    	response.sendRedirect("/FealMarket/fe/jsp/shopcart.jsp");
    	return null;
    	
    }

}
