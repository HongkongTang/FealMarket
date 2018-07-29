<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" import="edu.sdut.web.servlet.* ,java.util.List , edu.sdut.domain.*" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<title>结算页面</title>

	<link href="/FealMarket/fe/AmazeUI-2.4.2/assets/css/amazeui.css"
		rel="stylesheet" type="text/css" />

	<link href="/FealMarket/fe/basic/css/demo.css" rel="stylesheet"
		type="text/css" />
	<link href="/FealMarket/fe/css/cartstyle.css" rel="stylesheet"
		type="text/css" />

	<link href="/FealMarket/fe/css/jsstyle.css" rel="stylesheet"
		type="text/css" />

	<script type="text/javascript" src="/FealMarket/fe/js/address.js"></script>
</head>

<body>

	<!--顶部导航条 -->
	<%@include file="/fe/jsp/head.jsp"%>



	<div class="clear"></div>
	<div class="concent">
		<!--地址 -->
		<div class="paycont">
			<div class="address">
				<h3>确认收货地址</h3>
				<div class="control">
					<div class="tc-btn createAddr theme-login am-btn am-btn-danger">使用新地址</div>
				</div>
				<div class="clear"></div>
				<ul>
					<div class="per-border"></div>
					
					<%
						List<Address> addressList = (List<Address>)request.getAttribute("address");
						if(addressList!=null && addressList.size()>0){
							for(Address address : addressList){
								
					%>
					<li class="user-addresslist defaultAddr">

						<div class="address-left">
							<div class="user DefaultAddr">

								<span class="buy-address-detail"> <span class="buy-user"><%=address.getName() %>
								</span> <span class="buy-phone"><%=address.getPhone() %></span>
								</span>
							</div>
							<div class="default-address DefaultAddr">
								<span class="buy-line-title buy-line-title-type">收货地址：</span>  <span
									class="street"><%=address.getAddress() %></span>
								</span> </span>
							</div>
							
						</div>
					
						<div class="clear"></div>

						<div class="new-addr-btn">
							 <span class="new-addr-bar">|</span> <a href="/FealMarket/OrderServlet?method=delAddress&aid=<%=address.getId()%>">删除</a>
						</div>

					</li>
					
					<%
						}}
					%>
					<div class="per-border"></div>
				</ul>

				<div class="clear"></div>
			</div>
			<!--物流 -->
			<div class="logistics">
				<h3>选择物流方式</h3>
				<ul class="op_express_delivery_hot">
					<li data-value="yuantong" class="OP_LOG_BTN  "><i
						class="c-gap-right" style="background-position: 0px -468px"></i>圆通<span></span></li>
					<li data-value="shentong" class="OP_LOG_BTN  "><i
						class="c-gap-right" style="background-position: 0px -1008px"></i>申通<span></span></li>
					<li data-value="yunda" class="OP_LOG_BTN  "><i
						class="c-gap-right" style="background-position: 0px -576px"></i>韵达<span></span></li>
					<li data-value="zhongtong"
						class="OP_LOG_BTN op_express_delivery_hot_last "><i
						class="c-gap-right" style="background-position: 0px -324px"></i>中通<span></span></li>
					<li data-value="shunfeng"
						class="OP_LOG_BTN  op_express_delivery_hot_bottom"><i
						class="c-gap-right" style="background-position: 0px -180px"></i>顺丰<span></span></li>
				</ul>
			</div>
			<div class="clear"></div>

			<!--支付方式-->
			<div class="logistics">
				<h3>选择支付方式</h3>
				<ul class="pay-list">
					<li class="pay card"><img src="/FealMarket/fe/images/wangyin.jpg" />银联<span></span></li>
					<li class="pay qq"><img src="/FealMarket/fe/images/weizhifu.jpg" />微信<span></span></li>
					<li class="pay taobao"><img src="/FealMarket/fe/images/zhifubao.jpg" />支付宝<span></span></li>
				</ul>
			</div>
			<div class="clear"></div>
			
			<div class="clear"></div>
			<div class="pay-total">
				<!--留言-->
				<div class="order-extra">
					<div class="order-user-info">
						<div id="holyshit257" class="memo">
							<label>买家留言：</label> <input type="text"
								title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）"
								placeholder="选填,建议填写和卖家达成一致的说明"
								class="memo-input J_MakePoint c2c-text-default memo-close">
								<div class="msg hidden J-msg">
									<p class="error">最多输入500个字符</p>
								</div>
						</div>
					</div>

				</div>
			</div>
			<!--含运费小计 -->
			<%
				Cart cart = (Cart)session.getAttribute("cart");
				if(cart!=null){
			%>
			<div class="buy-point-discharge ">
				<p class="price g_price ">
					合计（含运费） <span>¥</span><em class="pay-sum"><%=cart.getTotalPrice() %></em>
				</p>
			</div>
			<%
				}
			%>

			<!--信息 -->
			<div class="order-go clearfix">
				<div class="pay-confirm clearfix">
					<div id="holyshit269" class="submitOrder">
						<div class="go-btn-wrap">
							<a id="J_Go" href="#" class="btn-go" tabindex="0"
								title="点击此按钮，提交订单">提交订单</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>

		<div class="clear"></div>
	</div>
	</div>
		<%@include file="/fe/jsp/foot.jsp" %>
	</div>
	<div class="theme-popover-mask"></div>
	<div class="theme-popover">

		<!--标题 -->
		<div class="am-cf am-padding">
			<div class="am-fl am-cf">
				<strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add
					address</small>
			</div>
		</div>
		<hr />

		<div class="am-u-md-12">
			<form class="am-form am-form-horizontal" method="post" action="${pageContext.request.contextPath}/OrderServlet" >
				<input type="hidden" name="method" value="addAddress"/>
				<div class="am-form-group">
					<label for="user-name" class="am-form-label">收货人</label>
					<div class="am-form-content">
						<input type="text" id="user-name" placeholder="收货人" name="name">
					</div>
				</div>

				<div class="am-form-group">
					<label for="user-phone" class="am-form-label">手机号码</label>
					<div class="am-form-content">
						<input id="user-phone" placeholder="手机号必填" type="phone" name="phone">
					</div>
				</div>


				<div class="am-form-group">
					<label for="user-intro" class="am-form-label">详细地址</label>
					<div class="am-form-content">
						<input  id="user-intro" placeholder="输入详细地址" type="text" name="address"/>
						<small>100字以内写出你的详细地址...</small>
					</div>
				</div>

				<div class="am-form-group theme-poptit">
					<div class="am-u-sm-9 am-u-sm-push-3">
						<div class="am-btn am-btn-danger"><input type="submit" value="保存" style="background-color: orange;"/></div>
						<div class="am-btn am-btn-danger close"><input type="button" value="取消" style="background-color: orange;"/></div>
					</div>
				</div>
			</form>
		</div>

	</div>

	<div class="clear"></div>
</body>

</html>