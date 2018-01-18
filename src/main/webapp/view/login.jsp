<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
		<base href="http://localhost:8080/ChatRobot/view/" />
		<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Minimal and Clean Sign up / Login and Forgot Form by FreeHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<!--<link rel="shortcut icon" href="favicon.ico">-->

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="login_css/css/bootstrap.min.css">
	<link rel="stylesheet" href="login_css/css/animate.css">
	<link rel="stylesheet" href="login_css/css/style.css">
		<script src="js/jquery-3.2.1.js"></script>
		<script src="js/Barrett.js"></script>
		<script type="text/javascript" src="js/RSA.js"></script>
		<script type="text/javascript" src="js/BigInt.js"></script>
		<script type="text/javascript" src="js/RSAJson.js"></script>

	<!-- Modernizr JS -->
	<script src="login_css/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="login_css/js/respond.min.js"></script>
	<![endif]-->
		<script type="text/javascript">
            $(document).ready(function () {
                $("#login").click(function () {
                    var username =document.getElementById("username").value;
                    var password = document.getElementById("password").value;
                    var postData = {"sId":username,"password":password};
                    bodyRSA();
                    var pwd = encryptedString(key, encodeURIComponent(JSON.stringify(postData)));
                    if(document.getElementById("remember").checked) {
                        saveCookie(c, pwd);
                    }
                    var result = {result: pwd};
                    httpPost("http://localhost:8080/ChatRobot/view/login",result);
                })
            })
         var c="user";
		</script>
	</head>
	<body class="style-3" onload="checkCookie(c)">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					登录
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-push-8">

					<!-- Start Sign In Form -->
					<form action="#" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
						<h2>登录</h2>
						<div class="form-group">
							<label for="username" class="sr-only">用户名</label>
							<input type="text" class="form-control" id="username" placeholder="用户名" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">密码</label>
							<input type="password" class="form-control" id="password" placeholder="密码" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="remember"><input type="checkbox" id="remember" value="true"> 记住密码</label>
						</div>
						<div class="form-group">
							<p>没有注册? <a href="register.jsp">注册</a> | <a href="forgot.jsp">忘记密码?</a></p>
						</div>
						<div class="form-group">
							<input type="button" id="login" value="登录" class="btn btn-primary">
						</div>
					</form>
					<!-- END Sign In Form -->
				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></small></p></div>
			</div>
		</div>
	
	<!-- jQuery -->
	<script src="login_css/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="login_css/js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="login_css/js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="login_css/js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="login_css/js/main.js"></script>

	</body>
</html>

