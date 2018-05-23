<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="http://localhost:8080/ChatRobot/bootstrap/" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>home</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="JD/css/base.css"/>
    <link rel="stylesheet" href="JD/css/results.css"/>
    <script src="assets/js/jquery-3.2.1.js"></script>
    <script src="assets/js/Barrett.js"></script>
    <script type="text/javascript" src="assets/js/RSA.js"></script>
    <script type="text/javascript" src="assets/js/BigInt.js"></script>
    <script type="text/javascript" src="assets/js/RSAJson.js"></script>
    <script type="text/javascript" src="assets/js/Sales.js"></script>
    <script>
        $(document).ready(function () {
            AjaxGetrecommend('http://localhost:8080/ChatRobot/view/recommend');

        })






    </script>
    <!-- BOOTSTRAP STYLES-->
</head>
<body>
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">DASHBOARD</h1>
                        <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>

                    </div>
                </div>

                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-4">
                        <div class="main-box mb-red">
                            <a href="#">
                                <i class="fa fa-bolt fa-5x"></i>
                                <h5>Zero Issues</h5>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="main-box mb-dull">
                            <a href="#">
                                <i class="fa fa-plug fa-5x"></i>
                                <h5>40 Task In Check</h5>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="main-box mb-pink">
                            <a href="#">
                                <i class="fa fa-dollar fa-5x"></i>
                                <h5>200K Pending</h5>
                            </a>
                        </div>
                    </div>

                </div>
                <div class="content">
                <div class="whiteZone-right">
                    <div>
                        <div class="f-l f-s-22 f-bold f-c-32" title="华夏操作 ${fund.fName}">
                            华夏操作${fund.fName}
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <%--[ 01-11  ]--%>
                    <div class="more-xinxi">
                        <div class="f-l">
                            <div class="f-c-5e l-h-18">单位净值</div>
                            <hr>
                            <div class="f-c-f5 f-f-a">
                                <div class="f-l f-s-36">${fund.price} </div>
                                <div class="f-l spacial-mar">
                                    <span class="dis-block  f-c-green "> -0.53%  </span>
                                    <span class="dis-block  f-c-green ">-0.0073 </span>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="f-c-a5 l-h-18"><input type="hidden" id="fNo" value="${fund.fNo}">${fund.fNo} ${fund.type}</div>
                        </div>
                        <div class="shu-line f-l"></div>
                        <div class="f-l m-r-30">
                            <div class="l-h-24">近一年：
                                <span class="f-c-red">${fund.syl_1n}%</span>
                            </div>
                            <div class="l-h-24">近六个月：
                                <span class="f-c-red">${fund.syl_6y}%</span>
                            </div>
                            <div class="l-h-24">近3个月：
                                <span class="f-c-red">${fund.syl_3y}%</span>
                            </div>
                            <div class="l-h-24">近1个月：
                                <span class="f-c-red">${fund.syl_1y}%</span>
                            </div>
                            <div class="l-h-24">成立日期：
                                ${fund.sdate}
                            </div>
                            <div class="l-h-24">最低购买额度：
                                ${fund.fund_minsg}<input type="hidden" id="minsg" value="${fund.fund_minsg}">
                            </div>
                        </div>
                    </div>
                    <div class="fenjie-line m-t-20 m-b-20"></div>
                    <div class="clearfix"></div>
                    <p class="m-t-15" id="errorInfo" style="display: none">
                        <img src="picture/gantan.png" alt="" class="m-t-3"/>
                        <span class="f-c-red" id="errorMessage"></span>
                    </p>
                    <%--<span class="input-group-btn">--%>
                    <%--<input class="btn btn-primary" value="SEARCH" onclick="getCustomInfo()"  type="button "/>--%>
                    <%--</span>--%>
                    <p class="m-t-15" id="feeTip">
                        <span>费率</span>
                        <del>${fund.fund_Rate*10}%</del>
                        <span class="f-c-f5">${fund.fund_Rate}%</span>
                        <span>，申购成功即扣除</span>
                    </p>
                </div>

                </div>
                <!-- /. ROW  -->

                <!--/.Row-->
                <hr />
        </div>
        </div>
    <script src="assets/js/jquery-1.10.2.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/jquery.metisMenu.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>
