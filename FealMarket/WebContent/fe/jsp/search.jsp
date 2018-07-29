<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java"
	import="edu.sdut.web.servlet.* ,java.util.List , edu.sdut.domain.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<title>搜索页面</title>

	<link href="/FealMarket/fe/AmazeUI-2.4.2/assets/css/amazeui.css"
		rel="stylesheet" type="text/css" />
	<link href="/FealMarket/fe/AmazeUI-2.4.2/assets/css/admin.css"
		rel="stylesheet" type="text/css" />

	<link href="/FealMarket/fe/basic/css/demo.css" rel="stylesheet"
		type="text/css" />

	<link href="/FealMarket/fe/css/seastyle.css" rel="stylesheet"
		type="text/css" />

	<script type="text/javascript"
		src="/FealMarket/fe/basic/js/jquery-1.7.min.js"></script>
	<script type="text/javascript" src="/FealMarket/fe/js/script.js"></script>
</head>

<body>


	<!--顶部导航条 -->
	<%@include file="/fe/jsp/head.jsp"%>

	<%
		PageBean<Product> pageBean = (PageBean<Product>)request.getAttribute("pageBean");
		List<Product> list = pageBean.getList();
	%>
	<div class="clear"></div>
	<b class="line"></b>
	<div class="search">
		<div class="search-list">
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


			<div class="am-g am-g-fixed">
				<div class="am-u-sm-12 am-u-md-12">

					<div class="search-content">
						<ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes">
							<%
							if(list!=null&&list.size()>0){
								for(Product p:list){
						%>

							<li>
								<div class="i-pic limit">
									<a href="/FealMarket/ProductServlet?method=getById&pid=<%=p.getId() %>"><img src="/FealMarket/fe/image/<%=p.getImage() %>"></a>
										<p class="title fl"><%=p.getName() %></p>
										<p class="price fl">
											<b>¥</b> <strong><%=p.getNet_price() %></strong>
										</p>
								</div>
							</li>

							<%
								}
							}
						%>
						</ul>
					</div>



					<div class="clear"></div>

					<%
						//获取分类
						Integer cid =Integer.parseInt(request.getParameter("cid"));
						if(cid==null||cid<=0){
							cid = 1;
						}
					%>
					<!--分页 -->
					<ul class="am-pagination am-pagination-right">
						<%
							if(pageBean.getPageTotal()!=null&&pageBean.getPageTotal()>0){
								if(pageBean.getPageNumber()==1){
						%>
						<!--上一页 -->
						<li class="am-disabled">&laquo;</li>
						<% }else{%>
						<!--上一页 -->
						<li><a
							href="/FealMarket/ProductServlet?method=getByPage&pageNum=<%=(pageBean.getPageNumber()-1)%>&cid=<%=cid%>">&laquo;</a></li>
						<% }
								for(int i = 1;i<=pageBean.getPageTotal();i++){
								%>


						<%
								if(i==pageBean.getPageNumber()){
							%>
						<li class="am-active"><a
							href="/FealMarket/ProductServlet?method=getByPage&pageNum=<%=i%>&cid=<%=cid%>"><%=i %></a></li>
						<%
								}else if(Math.abs(i-pageBean.getPageNumber())<3){
							%>
						<li><a
							href="/FealMarket/ProductServlet?method=getByPage&pageNum=<%=i%>&cid=<%=cid%>"><%=i %></a></li>
						<%
								}
							%>

						<%
								}
								if(pageBean.getPageNumber()==pageBean.getPageTotal()){
						%>
						<!--下一页 -->
						<li class="am-disabled">&raquo;</li>
						<% }else{%>
						<li><a
							href="/FealMarket/ProductServlet?method=getByPage&pageNum=<%=(pageBean.getPageNumber() + 1) %>&cid=<%=cid%>">&raquo;</a></li>
						<% }
							}
						%>

					</ul>

				</div>
			</div>
			<%@include file="/fe/jsp/foot.jsp"%>
		</div>

	</div>


	<!--菜单 -->
	<%@include file="/fe/jsp/menu.jsp"%>
	<script>
			window.jQuery || document.write('<script src="basic/js/jquery-1.9.min.js"><\/script>');
		</script>
	<script type="text/javascript" src="../basic/js/quick_links.js"></script>

	<div class="theme-popover-mask"></div>

</body>

</html>