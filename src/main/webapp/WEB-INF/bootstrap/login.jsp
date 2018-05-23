<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="http://localhost:8080/ChatRobot/bootstrap/" />
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>模板之家</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <script src="assets/js/jquery-3.2.1.js"></script>
    <script src="assets/js/Barrett.js"></script>
    <script type="text/javascript" src="assets/js/RSA.js"></script>
    <script type="text/javascript" src="assets/js/BigInt.js"></script>
    <script type="text/javascript" src="assets/js/RSAJson.js"></script>
    <script type="text/javascript">
    $(document).ready(function () {
        $("#login").click(function () {
            var username =document.getElementById("username").value;
            var password = document.getElementById("password").value;
            var postData = {"sId":username,"password":password};
            bodyRSA();
            var pwd = encryptedString(key, encodeURIComponent(JSON.stringify(postData)));
            if(document.getElementById("remember").checked){
                saveCookie(c, pwd);
            }
            var result = {result: pwd};
            httpPost("http://localhost:8080/ChatRobot/view/login",result);
        })
    });
    var c="userCookie";
</script>
</head>
<body style="background-color: #E2E2E2;" onload="checkCookie()">
    <div class="container">
        <div class="row text-center " style="padding-top:100px;">
            <div class="col-md-12">
                <h3>基金交易系统-登录</h3>
            </div>
        </div>
         <div class="row ">
               
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                           
                            <div class="panel-body">
                                <form role="form">
                                    <hr />
                                       <br />
                                     <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text" id="username" class="form-control" placeholder="用户ID " />
                                        </div>
                                                                              <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                                            <input type="password" id="password" class="form-control"  placeholder="密码" />
                                        </div>
                                    <div class="form-group">
                                            <label class="checkbox-inline">
                                                <input type="checkbox" id="remember" /> 记住密码？
                                            </label>
                                            <span class="pull-right">
                                                   <a href="index.jsp" >忘记密码? </a>
                                            </span>
                                        </div>
                                    <div class="form-group">
                                        <a  id="login"  class="btn btn-primary">登录</a>
                                    </div>
                                    </form>
                            </div>
                           
                        </div>
                
                
        </div>
    </div>

</body>
</html>
