﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="http://localhost:8080/ChatRobot/bootstrap/" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>模板之家</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--Fund BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <script>


            function buyfund () {
                var fNo = document.getElementById("fNo").value;
                var cNo = document.getElementById("cNo").value;
                var count = document.getElementById("count").value;
                var password = document.getElementById("password").value;
                var postData = {"fNo": fNo, "cNo": cNo, "password": password, "count": count};
                bodyRSA();
                var pwd = encryptedString(key, encodeURIComponent(JSON.stringify(postData)));
                var result = {result: pwd};
                httpPost("http://localhost:8080/ChatRobot/Fund/BFund", result);
            }

        function btnAction(){
            alert(document.getElementById("xz").disabled);
            alert(2);
        }
        function check(){
            //判断checkbox有没有被选中
            if(document.getElementById("ch").checked==true)
            {
                document.getElementById("xz").disabled="";//给BUTTON按钮的disabled属性赋值

            }else
            {
                document.getElementById("xz").disabled="disabled";
            }
        }
    </script>
</head>
<body>
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Basic Forms</h1>
                        <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">

            <div class="col-md-6 col-sm-6 col-xs-12">
               <div class="panel panel-danger">
                        <div class="panel-heading">
                           订单确认
                        </div>
                        <div class="panel-body">
                                <table>
                                <div class="form-group">
                                    <input class="form-control" type="hidden" id="fNo" name="fNo" readonly="readonly"  value="${fund.fNo}">
                                </div>
                                <div class="form-group">
                                    <%--<label>名称:</label>--%>
                                    <span><h3>${fund.fName}</h3></span>
                                    <input class="form-control" type="hidden"  name="fName" readonly="readonly"  value="${fund.fName}">
                                </div>
                                        <div class="form-group">
                                            <label>类型:</label><span>&nbsp&nbsp${fund.type}</span>
                                            <input class="form-control" type="hidden" name="type" readonly="readonly" value="${fund.type}">
                                        </div>
                                            <div class="form-group">
                                                <label>价格:</label><span>&nbsp&nbsp${fund.price}</span>
                                            <input class="form-control" type="hidden" name="price"  readonly="readonly" value="${fund.price}">
                                        </div>
                                <div class="form-group">
                                    <label>基金公司:</label><span>${fund.company}</span>
                                    <input class="form-control" type="hidden" name="company" readonly="readonly" value="${fund.company}">
                                </div>
                                <div class="form-group">
                                    <label>基金描述:</label><span>&nbsp&nbsp${fund.description}</span>
                                    <input class="form-control" type="hidden" name="description" readonly="readonly" value="${fund.description}">
                                </div>
                                <div class="form-group">
                                <label>用户账户:</label><span>&nbsp&nbsp${cno}</span>
                                <input class="form-control" type="hidden" name="cNo" id="cNo" value="${cno}">
                            </div>
                                <div class="form-group">
                                    <label>购买金额:</label><span>&nbsp&nbsp${money}</span>
                                    <input class="form-control" type="hidden" name="count" id="count"  value="${money}">
                                </div>
                                <div class="form-group">
                                    <label for="password">密码：</label>
                                    <input class="form-control" id="password" type="password" name="password">
                                </div>
                                <input type="checkbox" name="flag" id="ch" onclick="check()" >本人已阅读并同意<a href="http://localhost:8080/ChatRobot/viewN/go?url=xy">基金购买协议</a><hr>
                                        <button type="button" id="xz" class="btn btn-danger" onclick="buyfund()" disabled="disabled">确认提交订单</button>
                                </table>
                            </div>
                        </div>
                            </div>
        </div>
             <!--/.ROW-->



                            <hr>

        </div>
        </div>


        <div id="footer-sec">
        Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- Fund SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/RSA.js"></script>
    <script src="assets/js/BigInt.js"></script>
    <script src="assets/js/Barrett.js"></script>
        <script src="assets/js/RSAJson.js"></script>
</body>
</html>
