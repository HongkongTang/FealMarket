package edu.sdut.web.servlet;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sdut.domain.User;
import edu.sdut.service.UserService;
import edu.sdut.service.impl.UserServiceImpl;
import edu.sdut.web.servlet.base.ServletBase;

/**
 * 用户模块
 */
@WebServlet("/user")
public class UserServlet extends ServletBase {
	private static final long serialVersionUID = 1L;

	/**
	 * 使用邮箱进行用户注册
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String registByEmail(HttpServletRequest request, HttpServletResponse response) throws Exception {

		//封装对象
		User user = new User();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String passwordRepeat = request.getParameter("passwordRepeat");
		//判断两次密码是否相同
		if(!password.equals(passwordRepeat)){
			request.setAttribute("msg", "你好，您两次输入的密码不一样，请重新输入！");
			return "/fe/jsp/msg.jsp";
		}
		String username = email;
		
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		
		
		//调用service完成注册
		UserService userService = new UserServiceImpl();
		boolean YNregist = userService.registByEmail(user);
		if(YNregist)request.setAttribute("msg", "恭喜你注册成功！,请前往登陆界面进行<a href='fe/jsp/login.jsp'>登陆</a>！");
		else request.setAttribute("msg", "系统繁忙，注册失败！");
		return "/fe/jsp/msg.jsp";
	}
	/**
	 * 使用手机号进行用户注册
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String registByPhone(HttpServletRequest request, HttpServletResponse response) throws Exception {

		//封装对象
		User user = new User();
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		String passwordRepeat = request.getParameter("passwordRepeat");
		//判断两次密码是否相同
		if(!password.equals(passwordRepeat)){
			request.setAttribute("msg", "你好，您两次输入的密码不一样，请重新输入！");
			return "/fe/jsp/msg.jsp";
		}
		String username = phone;
		
		user.setUsername(username);
		user.setPhone(phone);
		user.setPassword(password);
		
		
		//调用service完成注册
		UserService userService = new UserServiceImpl();
		boolean YNregist = userService.registByPhone(user);
		if(YNregist)request.setAttribute("msg", "恭喜你注册成功！,请前往登陆界面进行<a href='fe/jsp/login.jsp'>登陆</a>！");
		else request.setAttribute("msg", "系统繁忙，注册失败！");
		return "/fe/jsp/msg.jsp";
	}
	
	/**
	 * 用户登陆验证
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String loginByName(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//获取用户名和密码
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String ok = request.getParameter("savepass");
		
//		调用Service进行用户验证
		UserService userService = new UserServiceImpl();
		boolean YNLogin = userService.LoginByName(username,password);
		if(!YNLogin){
			request.setAttribute("msg", "登陆失败，用户名和密码不匹配，请重新登陆！");
			return "/fe/jsp/msg.jsp";
		}else{
			
			//保存用户到session
			request.getSession().setAttribute("username", username);
			
			//保存用户名和密码到cookie
			Cookie c = new Cookie("username", URLEncoder.encode(username,"utf-8"));
			
			c.setPath(request.getContextPath()+"/");
			c.setMaxAge(9999);
			response.addCookie(c);
			
			
			if(ok!=null&&ok.equals("ok")){
				Cookie cc = new Cookie("password",URLEncoder.encode(password, "utf-8"));
				cc.setPath(request.getContextPath()+"/");
				cc.setMaxAge(9999);
				response.addCookie(cc);
			}
			
			
			response.sendRedirect("/FealMarket/");
			return null;
		}
	}
	
	/**
	 * 退出登陆
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String exitLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().setAttribute("username", null);
		
		response.sendRedirect("/FealMarket/fe/jsp/login.jsp");
		
		return null;
	}
	
	
}
