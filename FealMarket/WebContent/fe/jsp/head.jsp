<%@ page language="java"  import="edu.sdut.web.servlet.* ,java.util.* , edu.sdut.domain.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	<div class="hmtop">
		<!--顶部导航条 -->
		<div class="am-container header">
			<ul class="message-l">
				<div class="topMessage">
					<div class="menu-hd">
						<%
						
						String username = (String)session.getAttribute("username");
						//out.println(username);
						if(username==null||username.equals("")){
					%>
						<a href="/FealMarket/fe/jsp/login.jsp" target="_top" class="h">亲，请登录</a><span><b>|</b></span>
						<a href="/FealMarketfe/jsp/register.jsp" target="_top">免费注册</a>
						<%
						}else{
					%>
						<a href="#" target="_top">您好：<%=username %></a>
						<%
						}
					%>
					</div>
				</div>
			</ul>
			<ul class="message-r">
				<div class="topMessage home">
					<div class="menu-hd">
						<a href="/FealMarket/" target="_top" class="h">商城首页</a>
					</div>
				</div>
				<div class="topMessage my-shangcheng">
					<div class="menu-hd MyShangcheng">
						<a href="/FealMarket/user?method=exitLogin" target="_top"><i class="am-icon-user am-icon-fw"></i>退出登陆</a>
					</div>
				</div>
				<div class="topMessage mini-cart">
					<div class="menu-hd">
						<%
							Cart carttt = (Cart)session.getAttribute("cart");
							int numm = 0;
							if(carttt!=null){
								numm = carttt.getCartMap().size();
							}
						%>
						<a id="mc-menu-hd" href="/FealMarket/fe/jsp/shopcart.jsp" target="_top"><i
							class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong
							id="J_MiniCartNum" class="h"><%=numm %></strong></a>
					</div>
				</div>
				
					
			</ul>
		</div>

		<!--悬浮搜索框-->

		<div class="nav white">
			<!-- div class="logo"><img src="/FealMarket/fe/images/logo.png" /></div-->
			<div class="logoBig">
				<li><img src="/FealMarket/fe/image/registerlogo.jpg" /></li>
			</div>

			<div class="search-bar pr">
				<a name="index_none_header_sysc" href="#"></a>
				<form method="post" action="${pageContext.request.contextPath}/ProductServlet">
					<input type="hidden" name="method" value="search">
					<input type="hidden" name="pageNum" value="1">
					<input id="searchInput" name="index_none_header_sysc" type="text"
						placeholder="搜索" autocomplete="off"> <input
						id="ai-topsearch" class="submit am-btn" value="搜索" index="1"
						type="submit">
				</form>
			</div>
		</div>

		<div class="clear"></div>
	</div>