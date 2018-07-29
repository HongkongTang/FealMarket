<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" import="edu.sdut.web.servlet.* ,java.util.List , edu.sdut.domain.*" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<title>商品页面</title>

	<link href="/FealMarket/fe/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet"
		type="text/css" />
	<link href="/FealMarket/fe/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet"
		type="text/css" />
	<link href="/FealMarket/fe/basic/css/demo.css" rel="stylesheet" type="text/css" />
	<link type="text/css" href="/FealMarket/fe/css/optstyle.css" rel="stylesheet" />
	<link type="text/css" href="/FealMarket/fe/css/style.css" rel="stylesheet" />

	<script type="text/javascript" src="/FealMarket/fe/basic/js/jquery-1.7.min.js"></script>
	<script type="text/javascript" src="/FealMarket/fe/basic/js/quick_links.js"></script>

	<script type="text/javascript"
		src="/FealMarket/fe/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
	<script type="text/javascript" src="/FealMarket/fe/js/jquery.imagezoom.min.js"></script>
	<script type="text/javascript" src="/FealMarket/fe/js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="/FealMarket/fe/js/list.js"></script>
</head>

<body>


	<!--顶部导航条 -->
	<%@include file="/fe/jsp/head.jsp" %>
	<%
		Product product = (Product)request.getAttribute("product");
	%>
	<div class="clear"></div>
	<b class="line"></b>
	<div class="listMain">

		<!--分类-->
		<div class="nav-table">
			<div class="long-title">
				<span class="all-goods">全部分类</span>
			</div>
			<div class="nav-cont">
				<ul>
					<li class="index"><a href="/FealMarket/">首页</a></li>
					<li class="qc"><a href="#">毕业季</a></li>
				</ul>
			</div>
		</div>
		
		<script type="text/javascript">
					$(function() {});
					$(window).load(function() {
						$('.flexslider').flexslider({
							animation: "slide",
							start: function(slider) {
								$('body').removeClass('loading');
							}
						});
					});
				</script>
		<div class="scoll">
			<section class="slider">
			<div class="flexslider">
				<ul class="slides">
					<li><img src="/FealMarket/fe/image/<%=product.getImage() %>" title="pic" /></li>
				</ul>
			</div>
			</section>
		</div>

		<!--放大镜-->

		<div class="item-inform">
			<div class="clearfixLeft" id="clearcontent">

				<div class="box">
					<script type="text/javascript">
								$(document).ready(function() {
									$(".jqzoom").imagezoom();
									$("#thumblist li a").click(function() {
										$(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
										$(".jqzoom").attr('src', $(this).find("img").attr("mid"));
										$(".jqzoom").attr('rel', $(this).find("img").attr("big"));
									});
								});
							</script>

					<div class="tb-booth tb-pic tb-s310">
						<a href="/FealMarket/fe/image/<%=product.getImage() %>"><img src="/FealMarket/fe/image/<%=product.getImage() %>"
							alt="细节展示放大镜特效" rel="/FealMarket/fe/image/<%=product.getImage() %>" class="jqzoom" /></a>
					</div>
					<ul class="tb-thumb" id="thumblist">
						<li class="tb-selected">
							<div class="tb-pic tb-s40">
								<a href="#"><img src="/FealMarket/fe/image/<%=product.getImage() %>"
									mid="/FealMarket/fe/image/<%=product.getImage() %>" big="/FealMarket/fe/image/<%=product.getImage() %>"></a>
							</div>
						</li>
						<li>
							<div class="tb-pic tb-s40">
								<a href="#"><img src="/FealMarket/fe/image/<%=product.getImage() %>"
									mid="/FealMarket/fe/image/<%=product.getImage() %>" big="/FealMarket/fe/image/<%=product.getImage() %>"></a>
							</div>
						</li>
						<li>
							<div class="tb-pic tb-s40">
								<a href="#"><img src="/FealMarket/fe/image/<%=product.getImage() %>"
									mid="/FealMarket/fe/image/<%=product.getImage() %>" big="/FealMarket/fe/image/<%=product.getImage() %>"></a>
							</div>
						</li>
					</ul>
				</div>

				<div class="clear"></div>
			</div>
<!-- -------------------------------------------------------------------------------------- -->
			<div class="clearfixRight">

				<!--规格属性-->
				<!--名称-->
				<div class="tb-detail-hd">
					<h1><%=product.getName() %></h1>
				</div>
				<div class="tb-detail-list">
					<div>&nbsp;&nbsp;<i style="color: blue;">商品描述：</i><br>&nbsp;&nbsp;&nbsp;&nbsp;<%=product.getDes() %></div>
					<!--价格-->
					<div class="tb-detail-price">
						<li class="price iteminfo_price">
							<dt>商城价</dt>
							<dd>
								<em>¥</em><b class="sys_item_price"><%=product.getNet_price() %></b>
							</dd>
						</li>
						<li class="price iteminfo_mktprice">
							<dt>市场价</dt>
							<dd>
								<em>¥</em><b class="sys_item_mktprice"><%=product.getMarket_price() %></b>
							</dd>
						</li>
						<div class="clear"></div>
					</div>

					
					<div class="clear"></div>

					<!--销量-->
					
					<div class="clear"></div>

					<!--各种规格-->
					<dl class="iteminfo_parameter sys_item_specpara">
						<dt class="theme-login">
							<div class="cart-title">
								可选规格<span class="am-icon-angle-right"></span>
							</div>
						</dt>
						<dd>
							<!--操作页面-->

							<div class="theme-popover-mask"></div>

							<div class="theme-popover">
								<div class="theme-span"></div>
								<div class="theme-poptit">
									<a href="javascript:;" title="关闭" class="close">×</a>
								</div>
								<div class="theme-popbod dform">
									<form id="form1" class="theme-signin" name="loginform" action="${pageContext.request.contextPath}/CartServlet" method="get">
										<input type="hidden" name="method" value="addCart"/>
										<input type="hidden" name="pid" value="<%=product.getId()%>"/>
									</form>
								</div>
							</div>

						</dd>
					</dl>
					<div class="clear"></div>
					<!--活动	-->
						
				</div>

				<div class="pay">
	
					<li>
						<div class="clearfix tb-btn tb-btn-basket theme-login">
							<a href="#" onclick="document.getElementById('form1').submit();return false;" title="加入购物车" ><i>加入购物车</i></a>
						</div>
					</li>
				</div>

			</div>

			<div class="clear"></div>
 
		</div>


		<div class="clear"></div>


		<!-- introduce-->

		<div class="introduce">

			<div class="introduceMain">
				<div class="am-tabs" data-am-tabs>
					<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
						<li class="am-active"><a href="#"> <span
								class="index-needs-dt-txt">宝贝详情</span></a></li>

						<li><a href="#"> <span class="index-needs-dt-txt">全部评价</span></a>

						</li>

						<li><a href="#"> <span class="index-needs-dt-txt">猜你喜欢</span></a>
						</li>
					</ul>

					<div class="am-tabs-bd">

						

						

						

					</div>

				</div>

				<div class="clear"></div>

				<%@include file="/fe/jsp/foot.jsp" %>
			</div>

		</div>
	</div>
	<!--菜单 -->
	<%@include file="/fe/jsp/menu.jsp" %>

</body>

</html>