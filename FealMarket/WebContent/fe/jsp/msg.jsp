<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
	<div align="center" >
			<%
				String msg = (String)request.getAttribute("msg");
			%>
		<h1>
			<%=msg %>
		</h1>
	</div>
	<%@include file="/fe/jsp/foot.jsp" %>
</body>
</html>