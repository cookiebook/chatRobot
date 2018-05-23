﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <base href="http://localhost:8080/ChatRobot/bootstrap/" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>home</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/basic.css" rel="stylesheet" />
    <link href="assets/css/custom.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/paging.css">

    <script src="assets/js/jquery-3.2.1.js"></script>
    <script src="assets/js/Barrett.js"></script>
    <script type="text/javascript" src="assets/js/RSA.js"></script>
    <script type="text/javascript" src="assets/js/BigInt.js"></script>
    <script type="text/javascript" src="assets/js/RSAJson.js"></script>
    <script type="text/javascript" src="assets/js/Sales.js"></script>
    <script src="assets/js/paging.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/jquery.metisMenu.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
        $(document).ready(function () {
            var size=10;
            var setTotalCount = AjaxGetFa('http://localhost:8080/ChatRobot/fundaccount/searchCount', 1);
            $('#box').paging({
                initPageNo: 1, // 初始页码
                totalPages: Math.ceil(setTotalCount/size), //总页数
                totalCount: '合计' + setTotalCount + '条数据', // 条目总数AjaxGet("http://localhost:8080/ChatRobot/sales/searchCount","")
                slideSpeed: 600, // 缓动速度。单位毫秒
                jump: true, //是否支持跳转
                callback: function (page) { // 回调函数
                    console.log(page);
                    AjaxGetFa('http://localhost:8080/ChatRobot/fundaccount/myProductPage', page);
                }
            })
        })
    </script>


</head>
<body>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                            <div class="form-group input-group col-md-6 col-md-offset-3">
                                <input type="text" class="form-control" placeholder="Enter Keywords" id="searchfundaccount" />
                                <span class="input-group-btn">
                                <input class="btn btn-primary" value="SEARCH" onclick="selectfundaccountPage()"  type="button "/>
                                </span>
                            </div>
                            <br/>
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
                <p>
                    <button class="btn btn-danger" onclick="deleteAll('http://localhost:8080/ChatRobot/account/deleteAll')"><i class="glyphicon glyphicon-home"></i>Delete</button>
                </p>
                <!-- /. ROW  -->
                <section class="content">
                    <section class="widget">
                        <div>
                        <div class="content">
                        </div>
                        </div>

                    </section>
                </section>
                <div class="box" id="box"></div>
                    </div>
                        <hr />
                    </div>
</body>
</html>


















