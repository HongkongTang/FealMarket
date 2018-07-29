<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" import="edu.sdut.web.servlet.* ,java.util.List , edu.sdut.domain.*" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<title>首页</title>

	<link href="/FealMarket/fe/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet"
		type="text/css" />
	<link href="/FealMarket/fe/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet"
		type="text/css" />

	<link href="/FealMarket/fe/basic/css/demo.css" rel="stylesheet" type="text/css" />

	<link href="/FealMarket/fe/css/hmstyle.css" rel="stylesheet" type="text/css" />
	<link href="/FealMarket/fe/css/skin.css" rel="stylesheet" type="text/css" />
	<script src="/FealMarket/fe/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
	<script src="/FealMarket/fe/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
</head>

<body>
	<%@include file="/fe/jsp/head.jsp" %>
	<div class="banner">
		<!--轮播 -->
		<div class="am-slider am-slider-default scoll" data-am-flexslider
			id="demo-slider-0">
			<ul class="am-slides">
				<li class="banner1"><img src="/FealMarket/fe/images/ad1.jpg" /></a></li>
				<li class="banner2"><a><img src="/FealMarket/fe/images/ad2.jpg" /></a></li>
				<li class="banner3"><a><img src="/FealMarket/fe/images/ad3.jpg" /></a></li>
				<li class="banner4"><a><img src="/FealMarket/fe/images/ad4.jpg" /></a></li>

			</ul>
		</div>
		<div class="clear"></div>
	</div>
	<div class="shopNav">
		<div class="slideall">

			<div class="long-title">
				<span class="all-goods">全部分类</span>
			</div>
			<div class="nav-cont">
				<ul>
					<li class="index"><a href="/FealMarket/">首页</a></li>
					<li class="qc"><a href="#">全部分类</a></li>
					<li class="qc"><a href="#">毕业季</a></li>
				</ul>

			</div>

			<!--侧边导航 -->
			<div id="nav" class="navfull">
				<div class="area clearfix">
					<div class="category-content" id="guide_2">

						<div class="category">
							<ul class="category-list" id="js_climit_li">
								<li class="appliance js_toggle relative first">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i></i><a class="ml-22" title="手机">手机/数码</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="手机">手机</span>
															</dt>
															<dd>
																<a title="智能手机" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=1"><span>智能手机</span></a>
															</dd>
															<dd>
																<a title="数据线" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=2"><span>数据线</span></a>
															</dd>
															<dd>
																<a title="手机壳" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=3"><span>手机壳</span></a>
															</dd>
															<dd>
																<a title="充电器"href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=4"><span>充电器</span></a>
															</dd>
															<dd>
																<a title="手机支架" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=5"><span>手机支架</span></a>
															</dd>
															<dd>
																<a title="移动电源" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=6"><span>移动电源</span></a>
															</dd>
														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="摄像摄影">摄影摄像</span>
															</dt>
															<dd>
																<a title="数码相机" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=7"><span>数码相机</span></a>
															</dd>
															<dd>
																<a title="单反相机" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=8"><span>单反相机</span></a>
															</dd>
															<dd>
																<a title="相框" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=9"><span>相框</span></a>
															</dd>
														</dl>

													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>购物商城</span>
															</dt>
															<dd>
																<a rel="nofollow" title="京东" target="_blank"
																	href="https://www.jd.com/" rel="nofollow"><span
																	class="red">京东</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="天猫" target="_blank"
																	href="https://www.tmall.com" rel="nofollow"><span>天猫</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="拼多多" target="_blank"
																	href="https://www.pinduoduo.com/" rel="nofollow"><span
																	class="red">拼多多</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="唯品会" target="_blank"
																	href="https://www.vip.com/" rel="nofollow"><span>唯品会</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i></i><a class="ml-22" title="电脑、办公">电脑/办公</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="电脑">电脑</span>
															</dt>
															<dd>
																<a title="笔记本" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=10">笔记本<span>	</span></a>
															</dd>
															<dd>
																<a title="平板电脑" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=11"><span>平板电脑</span></a>
															</dd>
															<dd>
																<a title="台式机" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=12"><span>台式机</span></a>
															</dd>
															<dd>
																<a title="鼠标" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=13"><span>鼠标</span></a>
															</dd>
															<dd>
																<a title="键盘" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=14"><span>键盘</span></a>
															</dd>
														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="外设">外设</span>
															</dt>
															<dd>
																<a title="U盘" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=15"><span>U盘</span></a>
															</dd>
															<dd>
																<a title="网线" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=16"><span>网线</span></a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>购物商城</span>
															</dt>
															<dd>
																<a rel="nofollow" title="京东" target="_blank"
																	href="https://www.jd.com/" rel="nofollow"><span
																	class="red">京东</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="天猫" target="_blank"
																	href="https://www.tmall.com" rel="nofollow"><span>天猫</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="拼多多" target="_blank"
																	href="https://www.pinduoduo.com/" rel="nofollow"><span
																	class="red">拼多多</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="唯品会" target="_blank"
																	href="https://www.vip.com/" rel="nofollow"><span>唯品会</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i></i><a class="ml-22" title="男装、女装">男装/女装</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="男装">男装</span>
															</dt>
															<dd>
																<a title="T恤" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=17"><span>T恤</span></a>
															</dd>
															<dd>
																<a title="短裤" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=18"><span>短裤</span></a>
															</dd>
															<dd>
																<a title="外套" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=19"><span>外套</span></a>
															</dd>
															<dd>
																<a title="长裤" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=20"><span>长裤</span></a>
															</dd>
														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="女装">女装</span>
															</dt>
															<dd>
																<a title="T恤" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=21"><span>T恤</span></a>
															</dd>
															<dd>
																<a title="短裤" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=22"><span>短裤</span></a>
															</dd>
															<dd>
																<a title="外套" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=23"><span>外套</span></a>
															</dd>
															<dd>
																<a title="长裤" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=24"><span>长裤</span></a>
															</dd>
															<dd>
																<a title="裙子" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=25"><span>裙子</span></a>
															</dd>
															<dd>
																<a title="睡衣" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=26"><span>睡衣</span></a>
															</dd>
														</dl>

													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>购物商城</span>
															</dt>
															<dd>
																<a rel="nofollow" title="京东" target="_blank"
																	href="https://www.jd.com/" rel="nofollow"><span
																	class="red">京东</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="天猫" target="_blank"
																	href="https://www.tmall.com" rel="nofollow"><span>天猫</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="拼多多" target="_blank"
																	href="https://www.pinduoduo.com/" rel="nofollow"><span
																	class="red">拼多多</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="唯品会" target="_blank"
																	href="https://www.vip.com/" rel="nofollow"><span>唯品会</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i></i><a class="ml-22" title="美妆、个护">美妆/个护</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="面部护理">面部护理</span>
															</dt>
															<dd>
																<a title="面膜" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=27"><span>面膜</span></a>
															</dd>
															<dd>
																<a title="精华" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=28"><span>精华</span></a>
															</dd>
															<dd>
																<a title="防晒" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=29"><span>防晒</span></a>
															</dd>
															<dd>
																<a title="美白" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=30"><span>美白</span></a>
															</dd>
														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="彩妆">彩妆</span>
															</dt>
															<dd>
																<a title="香水" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=31"><span>香水</span></a>
															</dd>
															<dd>
																<a title="美甲" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=32"><span>美甲</span></a>
															</dd>
														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="护理">护理</span>
															</dt>
															<dd>
																<a title="洗发露" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=33"><span>洗发露</span></a>
															</dd>
															<dd>
																<a title="沐浴露" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=34"><span>沐浴露</span></a>
															</dd>
															<dd>
																<a title="牙膏" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=35"><span>牙膏</span></a>
															</dd>
															<dd>
																<a title="护手霜" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=36"><span>护手霜</span></a>
															</dd>
															<dd>
																<a title="剃须刀" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=37"><span>剃须刀</span></a>
															</dd>
															<dd>
																<a title="花露水" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=38"><span>花露水</span></a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>购物商城</span>
															</dt>
															<dd>
																<a rel="nofollow" title="京东" target="_blank"
																	href="https://www.jd.com/" rel="nofollow"><span
																	class="red">京东</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="天猫" target="_blank"
																	href="https://www.tmall.com" rel="nofollow"><span>天猫</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="拼多多" target="_blank"
																	href="https://www.pinduoduo.com/" rel="nofollow"><span
																	class="red">拼多多</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="唯品会" target="_blank"
																	href="https://www.vip.com/" rel="nofollow"><span>唯品会</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i></i><a class="ml-22" title="女鞋、箱包、钟表">女鞋/箱包/钟表</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="女鞋">女鞋</span>
															</dt>
															<dd>
																<a title="高跟鞋" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=39"><span>高跟鞋</span></a>
															</dd>
															<dd>
																<a title="平板鞋" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=40"><span>平板鞋</span></a>
															</dd>
															<dd>
																<a title="运动鞋" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=41"><span>运动鞋</span></a>
															</dd>
															<dd>
																<a title="拖鞋" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=42"><span>拖鞋</span></a>
															</dd>
														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="箱包">箱包</span>
															</dt>
															<dd>
																<a title="旅行箱" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=43"><span>旅行箱</span></a>
															</dd>
															<dd>
																<a title="手提包" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=44"><span>手提包</span></a>
															</dd>
															<dd>
																<a title="单肩包" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=45"><span>单肩包</span></a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>购物商城</span>
															</dt>
															<dd>
																<a rel="nofollow" title="京东" target="_blank"
																	href="https://www.jd.com/" rel="nofollow"><span
																	class="red">京东</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="天猫" target="_blank"
																	href="https://www.tmall.com" rel="nofollow"><span>天猫</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="拼多多" target="_blank"
																	href="https://www.pinduoduo.com/" rel="nofollow"><span
																	class="red">拼多多</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="唯品会" target="_blank"
																	href="https://www.vip.com/" rel="nofollow"><span>唯品会</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i></i><a class="ml-22" title="男鞋、运动、户外">男鞋/运动/户外</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="男鞋">男鞋</span>
															</dt>
															<dd>
																<a title="运动鞋" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=46"><span>运动鞋</span></a>
															</dd>
															<dd>
																<a title="篮球鞋" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=47"><span>篮球鞋</span></a>
															</dd>
															<dd>
																<a title="板鞋" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=48"><span>板鞋</span></a>
															</dd>
															<dd>
																<a title="拖鞋" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=49"><span>拖鞋</span></a>
															</dd>
														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="户外">户外</span>
															</dt>
															<dd>
																<a title="篮球" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=50"><span>篮球</span></a>
															</dd>
															<dd>
																<a title="羽毛球拍" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=51"><span>羽毛球</span></a>
															</dd>
															<dd>
																<a title="乒乓球拍" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=52"><span>乒乓球拍</span></a>
															</dd>
															<dd>
																<a title="足球" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=53"><span>足球</span></a>
															</dd>
															<dd>
																<a title="背包" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=54"><span>背包</span></a>
															</dd>
															<dd>
																<a title="渔具" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=55"><span>渔具</span></a>
															</dd>
															<dd>
																<a title="自行车" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=56"><span>自行车</span></a>
															</dd>
															<dd>
																<a title="电动车" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=57"><span>电动车</span></a>
															</dd>
															<dd>
																<a title="轮滑" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=58"><span>轮滑</span></a>
															</dd>
															<dd>
																<a title="轮滑" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=59"><span>滑板</span></a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>购物商城</span>
															</dt>
															<dd>
																<a rel="nofollow" title="京东" target="_blank"
																	href="https://www.jd.com/" rel="nofollow"><span
																	class="red">京东</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="天猫" target="_blank"
																	href="https://www.tmall.com" rel="nofollow"><span>天猫</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="拼多多" target="_blank"
																	href="https://www.pinduoduo.com/" rel="nofollow"><span
																	class="red">拼多多</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="唯品会" target="_blank"
																	href="https://www.vip.com/" rel="nofollow"><span>唯品会</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i></i><a class="ml-22" title="食品、特产">食品/特产</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="食品、特产">食品/特产</span>
															</dt>
															<dd>
																<a title="零食" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=60"><span>零食</span></a>
															</dd>
															<dd>
																<a title="特产" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=61"><span>特产</span></a>
															</dd>
														</dl>

													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>购物商城</span>
															</dt>
															<dd>
																<a rel="nofollow" title="京东" target="_blank"
																	href="https://www.jd.com/" rel="nofollow"><span
																	class="red">京东</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="天猫" target="_blank"
																	href="https://www.tmall.com" rel="nofollow"><span>天猫</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="拼多多" target="_blank"
																	href="https://www.pinduoduo.com/" rel="nofollow"><span
																	class="red">拼多多</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="唯品会" target="_blank"
																	href="https://www.vip.com/" rel="nofollow"><span>唯品会</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i></i><a class="ml-22" title="图书、文具">图书/文具</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="图书">图书</span>
															</dt>
															<dd>
																<a title="文学图书" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=62"><span>文学图书</span></a>
															</dd>
															<dd>
																<a title="考研图书" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=63"><span>考研图书</span></a>
															</dd>
															<dd>
																<a title="专业图书" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=64"><span>专业图书</span></a>
															</dd>
														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="文具">文具</span>
															</dt>
															<dd>
																<a title="笔" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=65"><span>笔</span></a>
															</dd>
															<dd>
																<a title="书架" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=66"><span>书架</span></a>
															</dd>
															<dd>
																<a title="书桌" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=67"><span>书桌</span></a>
															</dd>
															<dd>
																<a title="笔记本" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=68"><span>笔记本</span></a>
															</dd>
														</dl>

													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>购物商城</span>
															</dt>
															<dd>
																<a rel="nofollow" title="京东" target="_blank"
																	href="https://www.jd.com/" rel="nofollow"><span
																	class="red">京东</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="天猫" target="_blank"
																	href="https://www.tmall.com" rel="nofollow"><span>天猫</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="拼多多" target="_blank"
																	href="https://www.pinduoduo.com/" rel="nofollow"><span
																	class="red">拼多多</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="唯品会" target="_blank"
																	href="https://www.vip.com/" rel="nofollow"><span>唯品会</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i></i><a class="ml-22" title="其他">其他</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="其他">其他</span>
															</dt>
															<dd>
																<a title="其他" href="/FealMarket/ProductServlet?method=getByPage&pageNum=1&cid=69"><span>其他</span></a>
															</dd>
														</dl>

													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>购物商城</span>
															</dt>
															<dd>
																<a rel="nofollow" title="京东" target="_blank"
																	href="https://www.jd.com/" rel="nofollow"><span
																	class="red">京东</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="天猫" target="_blank"
																	href="https://www.tmall.com" rel="nofollow"><span>天猫</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="拼多多" target="_blank"
																	href="https://www.pinduoduo.com/" rel="nofollow"><span
																	class="red">拼多多</span></a>
															</dd>
															<dd>
																<a rel="nofollow" title="唯品会" target="_blank"
																	href="https://www.vip.com/" rel="nofollow"><span>唯品会</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

							</ul>
						</div>
					</div>

				</div>
			</div>
			<!-- ------------------------------------------------------------------------------------------------------------------------ -->

			<!--轮播-->

			<script type="text/javascript">
							(function() {
								$('.am-slider').flexslider();
							});
							$(document).ready(function() {
								$("li").hover(function() {
									$(".category-content .category-list li.first .menu-in").css("display", "none");
									$(".category-content .category-list li.first").removeClass("hover");
									$(this).addClass("hover");
									$(this).children("div.menu-in").css("display", "block")
								}, function() {
									$(this).removeClass("hover")
									$(this).children("div.menu-in").css("display", "none")
								});
							})
						</script>




			<!--走马灯 -->

			<div class="marqueen">
				<span class="marqueen-title">商城赞助</span>
				<div class="demo">
	
					<%
						List<AdBean> adList = (List<AdBean>)request.getAttribute("ad");
						if(adList!=null&&adList.size()>0){
							for(AdBean ad:adList){
					%>
					<ul>
						<li class="title-first"><a >
						 <span style="color: blue;"><%=ad.getName() %></span>
						</a></li>
						<li class="title-first"><a >
						 <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=ad.getContent() %></span>
						</a></li>

					</ul>
					<%
						}
						}
					%>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<script type="text/javascript">
					if ($(window).width() < 640) {
						function autoScroll(obj) {
							$(obj).find("ul").animate({
								marginTop: "-39px"
							}, 500, function() {
								$(this).css({
									marginTop: "0px"
								}).find("li:first").appendTo(this);
							})
						}
						$(function() {
							setInterval('autoScroll(".demo")', 3000);
						})
					}
				</script>
	</div>
	<div class="shopMainbg">
		<div class="shopMain" id="shopmain">


			<!--今日推荐 -->

			<div class="am-g am-g-fixed recommendation">
				<div class="clock am-u-sm-3"">
					<img src="/FealMarket/fe/image/2018.jpg "></img>
					<p>
						今日<br>推荐
					</p>
				</div>
				<%
					List<Product> list_date = (List<Product>)request.getAttribute("productByDate") ;
					if(list_date!=null&&list_date.size()>0){
					for(Product p:list_date){
						int len = p.getDes().length();
						int end = Math.min(25, len);
				%>
			    <div class="am-u-sm-4 am-u-lg-3 ">
					<div class="info ">
						<h3><%=p.getDes().substring(0, end) %></h3>
						<h4>￥<%=p.getNet_price() %></h4>
					</div>
					<div class="recommendationMain three">
						<a href="/FealMarket/ProductServlet?method=getById&pid=<%=p.getId() %>"><img src="/FealMarket/fe/image/<%= p.getImage()%>"></img></a>
					</div>
				</div>
				<%
					}}
				%>

			</div>
			<div class="clear "></div>


			<div id="f1">
				<!--甜点-->

				<div class="am-container ">
					<div class="shopTitle ">
						<h4>热门商品</h4>
						<h3>每一件推荐，都是心的跳动</h3>
					</div>
				</div>
				
				<!-- 				循环显示商品 -->
				<div class="am-g am-g-fixed floodFour">
					<%
						List<Product> list_hot= (List<Product>)request.getAttribute("productByHot") ;
						if(list_hot!=null&&list_hot.size()>0){
						for(Product p:list_hot){
							int len = p.getDes().length();
							int end = Math.min(25, len);
					%>
					<div class="am-u-sm-7 am-u-md-4 text-two " style="height: 300px">
						<div class="outer-con ">
							<div class="title "><%=p.getDes().substring(0,end) %></div>	
							<div class="sub-title ">￥<%=p.getNet_price() %></div>
						</div>
						<a href="/FealMarket/ProductServlet?method=getById&pid=<%=p.getId() %>"><img src="/FealMarket/fe/image/<%=p.getImage() %>" /></a>
					</div>
					<%
						}}
					%>
				</div>
				
				<div class="clear "></div>
			</div>
			<!-- 循环显示商品结束 -->

			<%@include file="/fe/jsp/foot.jsp" %>
		</div>
	</div>



	<%@include file="/fe/jsp/menu.jsp"%>
			

			<script>
			window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
		</script>
			<script type="text/javascript " src="/FealMarket/fe/basic/js/quick_links.js "></script>
</body>

</html>