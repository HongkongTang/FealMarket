package edu.sdut.web.servlet.base;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.management.RuntimeErrorException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 利用反射，通过method参数，直接执行相应的方法
 * Servlet implementation class ServletBase
 */
@WebServlet("/ServletBase")
public class ServletBase extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//获取方法名称
			String mName = request.getParameter("method");
			//判断参数是否为空，执行默认的方法
			if(mName==null || mName.trim().length()==0){
				mName = "index";
			}
			//获取方法对象
			Method method = this.getClass().getMethod(mName, HttpServletRequest.class,HttpServletResponse.class);
			//让方法执行并返回值
			String path = (String)method.invoke(this,request,response);
			//判断返回值是否为空
			if(path!=null){
				request.getRequestDispatcher(path).forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		} 
		
	}
	public String index(HttpServletRequest request, HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println("亲，不要捣乱");
		return null;
	}

}
