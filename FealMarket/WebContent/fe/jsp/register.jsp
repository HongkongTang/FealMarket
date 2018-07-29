<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head lang="en">
<meta charset="UTF-8">
<title>注册</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet"
	href="../AmazeUI-2.4.2/assets/css/amazeui.min.css" />
<link href="../css/dlstyle.css" rel="stylesheet" type="text/css">
<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

</head>

<body>

	<div class="login-boxtitle">
		<a href="home.jsp"><img alt="" src="../image/loginlogo.jpg" /></a>
	</div>

	<div class="res-banner">
		<div class="res-main">
			<div class="login-box">

				<div class="am-tabs" id="doc-my-tabs">
					<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
						<li class="am-active"><a href="">邮箱注册</a></li>
						<li><a href="">手机号注册</a></li>
					</ul>

					<div class="am-tabs-bd">
						<div class="am-tab-panel am-active">
							<form method="post" action="${pageContext.request.contextPath}/user">
								<input type="hidden" name = "method" value="registByEmail">
								<div class="user-email">
									<label for="email"><i class="am-icon-envelope-o"></i></label> <input
										type="email" name="email" id="email" placeholder="请输入邮箱账号">
								</div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="password" id="password" placeholder="设置密码">
								</div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
									<input type="password" name="passwordRepeat" id="passwordRepeat"
										placeholder="确认密码">
								</div>
								
								<div class="am-cf">
									<input type="submit" name="submit" value="注册"
										class="am-btn am-btn-primary am-btn-sm am-fl">
								</div>
								
							</form>
							
						</div>

						<div class="am-tab-panel">
							<form method="post" action="${pageContext.request.contextPath }/user">
							<input type="hidden" name = "method" value="registByPhone">
								<div class="user-phone">
									<label for="phone"><i
										class="am-icon-mobile-phone am-icon-md"></i></label> <input type="tel"
										name="phone" phone="phone" id="phone" placeholder="请输入手机号">
								</div>
								<!--div class="verification">
									<label for="code"><i class="am-icon-code-fork"></i></label> <input
										type="tel" name="" id="code" placeholder="请输入验证码"> <a
										class="btn" href="javascript:void(0);"
										onclick="sendMobileCode();" id="sendMobileCode"> <span
										id="dyMobileButton">获取</span></a>
								</div-->
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="password" id="password" placeholder="设置密码">
								</div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
									<input type="password" name="passwordRepeat" id="passwordRepeat"
										placeholder="确认密码">
								</div>
								<div class="am-cf">
								<input type="submit" name="" value="注册"
									class="am-btn am-btn-primary am-btn-sm am-fl">
							</div>
							</form>
							

							<hr>
						</div>

						<script>
									$(function() {
									    $('#doc-my-tabs').tabs();
									  })
								</script>

					</div>
				</div>

			</div>
		</div>

		<div class="footer ">
			<div class="footer-hd ">
				<p>
					<a href="http://www.sdut.edu.cn/">SDUT首页</a> <b>|</b> <a
						href="home.jsp">市场首页</a> <b>|</b> <a
						href="https://blog.csdn.net/txgANG">CSDN博客</a> <b>|</b> <a
						href="https://github.com/HongkongTang">github</a>
				</p>
			</div>
			<div class="footer-bd ">
				<p>
					<a href="http://www.sdut.edu.cn/">关于山理</a> <a href="# ">其他商城</a> <a
						href="# ">联系我们</a> <em>© 2018-2028 HongKong.com 版权所有. </em>
				</p>
			</div>
		</div>
</body>

</html>