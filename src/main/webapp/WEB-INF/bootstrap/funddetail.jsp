<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="http://localhost:8080/ChatRobot/bootstrap/" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>基金详情</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link rel="stylesheet" href="JD/css/base.css"/>
    <link rel="stylesheet" href="JD/css/results.css"/>
    <script type="text/javascript" src="assets/js/Sales.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <script>
        function getCustomInfo() {
            var size=10;
            var param=document.getElementById("buyAmount").value;
            var fNo=document.getElementById("fNo").value;
            AjaxGetCInfo('http://localhost:8080/ChatRobot/account/selectById', param,fNo);
        }
        function comparemoney()
        {
            var y=document.getElementById("moneyx").value;
            var x=document.getElementById("money").value;
            var z=document.getElementById("minsg").value;
            if(parseInt(y)>=parseInt(x)&&parseInt(x)>=parseInt(z))
                document.getElementById("buy").disabled="";
            else
                document.getElementById("buy").disabled="true";
        }
    </script>
</head>
<body>
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">基金详情</h1>
                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">

                <div class="whiteZone-right">
                    <div>
                        <div class="f-l f-s-22 f-bold f-c-32" title=" ${fund.fName}">
                            ${fund.fName}
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
                    <label for="buyAmount">用户账号：</label>
                    <div class="m-t-10" style="position: relative">
                        <div class="input-wrap">
                            <input id="buyAmount" name="buyAmount" class="aiya" type="text" >
                        </div>&nbsp&nbsp
                        <input style="background-color:#97b0b2;align-content: center;height: 45px"  onclick="getCustomInfo()" type="button" value="查找">
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
                            <hr>


        </div>
                <hr>
                <section class="content">
                    <section class="widget">
                        <div>
                            <div class="content">
                            </div>
                        </div>
                    </section>
                </section>
        </div>

        </div>

        <hr />
        <!-- /. PAGE WRAPPER  -->
    <!-- /. WRAPPER  -->
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>


</body>
</html>
