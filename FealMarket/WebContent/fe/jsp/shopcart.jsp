<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java"
	import="edu.sdut.web.servlet.* ,java.util.* , edu.sdut.domain.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<title>购物车页面</title>

	<link href="/FealMarket/fe/AmazeUI-2.4.2/assets/css/amazeui.css"
		rel="stylesheet" type="text/css" />
	<link href="/FealMarket/fe/basic/css/demo.css" rel="stylesheet"
		type="text/css" />
	<link href="/FealMarket/fe/css/cartstyle.css" rel="stylesheet"
		type="text/css" />
	<link href="/FealMarket/fe/css/optstyle.css" rel="stylesheet"
		type="text/css" />

	<script type="text/javascript" src="/FealMarket/fe/js/jquery.js"></script>
</head>

<body>

	<!--顶部导航条 -->
	<%@include file="/fe/jsp/head.jsp"%>
	<div class="clear"></div>

	<!--购物车 -->
	<div class="concent">
		<div id="cartTable">
			<div class="cart-table-th">
				<div class="wp">
					<div class="th th-chk">
						<div id="J_SelectAll1" class="select-all J_SelectAll"></div>
					</div>
					<div class="th th-item">
						<div class="td-inner">商品信息</div>
					</div>
					<div class="th th-price">
						<div class="td-inner">单价</div>
					</div>
					<div class="th th-amount">
						<div class="td-inner">数量</div>
					</div>
					<div class="th th-sum">
						<div class="td-inner">金额</div>
					</div>
					<div class="th th-op">
						<div class="td-inner">操作</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>

			<tr class="item-list">
				<div class="bundle  bundle-last ">
					<div class="clear"></div>
					<div class="bundle-main">
						<%
							Cart cart = (Cart)session.getAttribute("cart");
							if(cart!=null){
								Map map = cart.getCartMap();
								Double totalPrice = cart.getTotalPrice();
								 Set<String> set = map.keySet();
								if(set!=null&&set.size()>0){
									for(String s : set){
									CartItem cartItem = (CartItem)map.get(s);
									//System.out.println(cartItem.getProduct().getImage());
						%>
						<ul class="item-content clearfix">
							<li class="td td-item">
								<div class="item-pic">
									<a href="/FealMarket/ProductServlet?method=getById&pid=<%=s%>" target="_blank" class="J_MakePoint"
										data-point="tbcart.8.12"> <img
										src="/FealMarket/fe/image/small_<%=cartItem.getProduct().getImage()%>"
										class="itempic J_ItemImg"></a>
								</div>
								<div class="item-info">
									<div class="item-basic-info">
										<a href="#" target="_blank" class="item-title J_MakePoint"
											data-point="tbcart.8.11"><%=cartItem.getProduct().getDes() %></a>
									</div>
								</div>
							</li>
							<li class="td td-info">
								<div class="item-props item-props-can"></div>
							</li>
							<li class="td td-price">
								<div class="item-price price-promo-promo">
									<div class="price-content">
									
										<div class="price-line">
											<em class="J_Price price-now" tabindex="0"><%=cartItem.getProduct().getNet_price() %></em>
										</div>
									</div>
								</div>
							</li>
							<li class="td td-amount">
								<div class="amount-wrapper ">
									<div class="item-amount ">
										<div class="sl">
											<input class="text_box" name="" type="text"
												disabled="disabled" value="<%=cartItem.getCount() %>"
												style="width: 30px;" />
										</div>
									</div>
								</div>
							</li>
							<li class="td td-sum">
								<div class="td-inner">
									<em tabindex="0" class="J_ItemSum number"><%=cartItem.getTPrice() %></em>
								</div>
							</li>
							<li class="td td-op">
								<div class="td-inner">
									<a href="/FealMarket/CartServlet?method=delFromCart&pid=<%=s %>" class="delete"> 删除</a>
								</div>
							</li>
						</ul>

					<%
							}}
					%>
					</div>
				</div>
			</tr>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>

		<div class="float-bar-wrapper">
			<div class="operations">
				<a href="/FealMarket/CartServlet?method=clear" hidefocus="true" class="deleteAll">清空购物车</a>
			</div>
			<div class="float-bar-right">
				<div class="amount-sum">
					<span class="txt">商品共</span> <em id="J_SelectedItemsCount"><%=cart.getCartMap().size() %></em><span
						class="txt">件</span>
					<div class="arrow-box">
						<span class="selected-items-arrow"></span> <span class="arrow"></span>
					</div>
				</div>
				<div class="price-sum">
					<span class="txt">合计:</span> <strong class="price">¥<em
						id="J_Total"><%=cart.getTotalPrice() %></em></strong>
				</div>
				<%
							}
				%>
				<div class="btn-area">
					<a href="/FealMarket/OrderServlet?method=toPay" id="J_Go" class="submit-btn submit-btn-disabled"
						aria-label="请注意如果没有选择宝贝，将无法结算"> <span>结&nbsp;算</span></a>
				</div>
			</div>

		</div>

		<%@include file="/fe/jsp/foot.jsp"%>

	</div>

	<!--操作页面-->
	<div class="theme-popover-mask"></div>
</body>

</html>