package edu.sdut.web.servlet;

import edu.sdut.dao.OrderDao;
import edu.sdut.dao.impl.OrderDaoImpl;
import edu.sdut.domain.Address;
import edu.sdut.service.OrderService;
import edu.sdut.service.impl.OrderServiceImpl;
import edu.sdut.web.servlet.base.ServletBase;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 处理订单有关的信息
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends ServletBase {
	private static final long serialVersionUID = 1L;
	
	/**
	 * 拿到用户的地址，到支付界面去
	 * 订单即购物车中的商品订单，在session中保存
	 * 每次访问购物车是空的
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String toPay(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String username = (String)request.getSession().getAttribute("username");
		//获取地址
		OrderService orderService = new OrderServiceImpl();
		List<Address> address = orderService.getAddress(username);
		
		request.setAttribute("address", address);
		
		
		return "/fe/jsp/pay.jsp";
	}
	
	/**
	 * 添加地址信息
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String addAddress(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Address addr = new Address();
		String username = (String)request.getSession().getAttribute("username");
		addr.setUsername(username);
		
		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		addr.setAddress(address);
		addr.setName(name);
		addr.setPhone(phone);
		
		OrderService orderService = new OrderServiceImpl();
		boolean yn_add = orderService.addAddress(addr);
		if(!yn_add){
			request.setAttribute("msg", "地址添加失败");
			return "/fe/jsp/msg.jsp";
		}
		else{
			return this.toPay(request,response);
		}
	}
	
	/**
	 * 删除地址
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String delAddress(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String aid = (String)request.getParameter("aid");
		OrderService orderService = new OrderServiceImpl();
		boolean yn_add = orderService.delAddress(aid);
		if(!yn_add){
			request.setAttribute("msg", "地址删除失败");
			return "/fe/jsp/msg.jsp";
		}
		else{
			//删除地址后到支付界面去
			return this.toPay(request,response);
		}
	}
	

}
