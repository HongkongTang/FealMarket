<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head lang="en">
<meta charset="UTF-8">
<title>登录</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet" href="/FealMarket/fe/AmazeUI-2.4.2/assets/css/amazeui.css" />
<link href="/FealMarket/fe/css/dlstyle.css" rel="stylesheet" type="text/css">
</head>

<body>

	<div class="login-boxtitle">
		<a href="home.jsp"><img alt="logo" src="../image/loginlogo.jpg" /></a>
	</div>

	<div class="login-banner">
		<div class="login-main">
			<div class="login-box">

				<h3 class="title">登录 SDUT"跳骚市场"</h3>

				<div class="clear"></div>
				<form method="post" action="${pageContext.request.contextPath}/user" onsubmit="return form_onsubmit()">
					<div class="login-form">
						<div id="login-form-div">
							<input type="hidden" name="method" value="loginByName">
							<div class="user-name">
								<label for="user"><i class="am-icon-user"></i></label> <input 
								type="text" name="username" id="user" placeholder="邮箱/手机/用户名"
								>
							</div>
							<div class="user-pass">
								<label for="password"><i class="am-icon-lock"></i></label> <input 
								type="password" name="password" id="password"
									placeholder="请输入密码">
							</div>

						</div>
					</div>

					<div class="login-links">
						<label for="remember-me"><input id="remember-me"
							type="checkbox" name="savepass" value="ok">记住密码</label> <a
							href="register.jsp" class="zcnext am-fr am-btn-default">注册</a> <br />
					</div>
					<div class="am-cf">
						<input type="submit" name="login" value="登 录"
							class="am-btn am-btn-primary am-btn-sm">
					</div>
				</form>
			</div>
		</div>
	</div>


	<%@include file="/fe/jsp/foot.jsp" %>
	
</body>
<script type="text/javascript">
	var val1= "${cookie.username.value}";
	var val2= "${cookie.password.value}";
	document.getElementById("user").value = decodeURI(val1);
	document.getElementById("password").value = decodeURI(val2);
	
	function form_onsubmit(){
		
		var val_user = document.getElementById("user").value;
		var val_pass = document.getElementById("password").value;
		if(val_user==null||val_user==""){
			alert("用户名不能为空！");
			return false;
		}else if(val_pass==null||val_pass==""){
			alert("密码不能为空！");
			return false;
		}
		return true;
	}
	
</script>
</html>