package edu.sdut.web.fliter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 权限过滤器
 * @author Vision_TXG
 *
 */
public class PowerFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {

		//强转
		
		HttpServletRequest request = (HttpServletRequest)arg0;
		HttpServletResponse response = (HttpServletResponse)arg1;
		
		
		//逻辑
		String username = (String)request.getSession().getAttribute("username");
		//System.out.println(username);
		if(username==null){
			request.setAttribute("msg", "请先<a href='/FealMarket/fe/jsp/login.jsp'>登陆</a>");
			request.getRequestDispatcher("/fe/jsp/msg.jsp").forward(request, response);
		}
		
		//放行
		
		
		else arg2.doFilter(request, response);
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
