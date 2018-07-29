<%@ page language="java" import="edu.sdut.web.servlet.* ,java.util.* , edu.sdut.domain.*"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!--菜单 -->
	<div class=tip>
		<div id="sidebar">
			<div id="wrap">
				<div id="prof" class="item ">
					<a href="# "> <span class="setting "></span>
					</a>
					<div class="ibar_login_box status_login ">
						<div class="avatar_box ">
							<p class="avatar_imgbox ">
								<img src="/FealMarket/fe/images/no-img_mid_.jpg " />
							</p>
							<ul class="user_info ">
								<%
									String user = (String)session.getAttribute("username");
								%>
								<li>您好：<%=user %></li>
							</ul>
						</div>
						<div class="login_btnbox ">
							<a href="# " class="login_order ">我的订单</a> <a href="#"
								class="login_favorite ">我的主页</a>
						</div>
						<i class="icon_arrow_white "></i>
					</div>

				</div>
				
				<%
					Cart cartt = (Cart)session.getAttribute("cart");
					int num = 0;
					if(cartt!=null){
						num = cartt.getCartMap().size();
					}
				%>
				<div id="shopCart " class="item ">
					<a href="/FealMarket/fe/jsp/shopcart.jsp"> <span class="message "></span>
					</a>
					<p>购物车</p>
					<p class="cart_num "><%=num %></p>
					
				</div>

				<div id="foot " class="item ">
					<a href="# "> <span class="zuji "></span>
					</a>
					<div class="mp_tooltip ">
						我的足迹 <i class="icon_arrow_right_black "></i>
					</div>
				</div>


				<div class="quick_toggle ">
					<li class="qtitem "><a href="# "><span class="kfzx "></span></a>
						<div class="mp_tooltip ">
							客服中心<i class="icon_arrow_right_black "></i>

							<li class="qtitem "><a href="#top " class="return_top "><span
									class="top "></span></a></li>
						</div> <!--回到顶部 -->
						<div id="quick_links_pop " class="quick_links_pop hide "></div>
				</div>

			</div>
		</div>
	</div>