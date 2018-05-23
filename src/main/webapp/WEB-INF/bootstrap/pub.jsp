<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><sitemesh:write property='title' /></title>
    <sitemesh:write property='head' />
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">开放式基金交易系统</a>
        </div>

        <div class="header-right">
            <a href="http://localhost:8080/ChatRobot/view/update" class="btn btn-primary" title="UPDATE DATABASE"><b>40 </b><i class="fa fa-bars fa-2x"></i></a>
            <a href="http://localhost:8080/ChatRobot/viewN/loginout" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>
        </div>
    </nav>
    <!-- /. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <div class="user-img-div">
                        <a href="http://localhost:8080/ChatRobot/view/updateself?sId=${sessionScope.user.sId}"><img src="assets/img/user.png" class="img-thumbnail" /></a>
                        <div class="inner-text">
                            ${sessionScope.user.ussername}
                        </div>
                        <div class="inner-text">
                            <br/>
                            <small>职务 : ${sessionScope.user.position}</small>
                        </div>
                    </div>

                </li>


                <li>
                    <a class="active-menu" href="http://localhost:8080/ChatRobot/view/go?url=index"><i class="fa fa-dashboard "></i>主页</a>
                </li>

                <%--基金选购--%>
                <li>
                    <a href="#"><i class="fa fa-desktop "></i>基金选购 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="http://localhost:8080/ChatRobot/view/go?url=FundBuy"><i class="fa fa-toggle-on"></i>基金申购</a>
                        </li>
                        <li>
                            <a href=" http://localhost:8080/ChatRobot/view/go?url=FundRedemption"><i class="fa fa-bell "></i>基金赎回</a>
                        </li>
                    </ul>
                </li>

                <%--基金管理--%>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>基金管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="http://localhost:8080/ChatRobot/view/go?url=Fundsearch"><i class="fa fa-coffee"></i>基金管理</a>
                        </li>
                    </ul>
                </li>

                <%--人员管理--%>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>人员管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="http://localhost:8080/ChatRobot/view/go?url=salessearch"><i class="fa fa-send "></i>员工管理</a>
                            <%--<a href="javascript:;"  onclick="javascript:selsales(${user.sId})" ><i class="fa fa-send "></i>员工查询</a>--%>
                        </li>
                        <%--<li>--%>
                            <%--<a href="http://localhost:8080/ChatRobot/view/go?url=addUser"><i class="fa fa-coffee"></i>员工新增</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="http://localhost:8080/ChatRobot/view/go?url=pricing"><i class="fa fa-flash "></i>修改员工信息</a>--%>
                        <%--</li>--%>
                        <%--<c:choose>--%>
                        <%--<c:when test="${sessionScope.user.permission==10}">--%>
                        <%--<li>--%>
                        <%--<a href="http://localhost:8080/ChatRobot/view/go?url=component"><i class="fa fa-key "></i>权限管理</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                        <%--<a href="http://localhost:8080/ChatRobot/view/go?url=message-task"><i class="fa fa-recycle "></i>员工离职</a>--%>
                        <%--</li>--%>
                        <%--</c:when>--%>
                        <%--</c:choose>--%>
                    </ul>
                </li>

                <%--客户管理--%>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>客户管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="http://localhost:8080/ChatRobot/view/go?url=customsearch"><i class="fa fa-coffee"></i>客户管理</a>
                        </li>


                    </ul>
                </li>

                <%--资金账户管理--%>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>资金账户管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="http://localhost:8080/ChatRobot/view/go?url=accountsearch"><i class="fa fa-coffee"></i>账户管理</a>
                        </li>
                    </ul>
                </li>

                <%--日志管理--%>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>日志管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="http://localhost:8080/ChatRobot/view/go?url=Logsearch"><i class="fa fa-coffee"></i>日志管理</a>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <%--<div id="page-wrapper">--%>
        <%--<div id="page-inner">--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-12">--%>
                    <%--<h1 class="page-head-line">DASHBOARD</h1>--%>
                    <%--<h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>--%>

                <%--</div>--%>
            <%--</div>--%>
            <%--<!-- /. ROW  -->--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-4">--%>
                    <%--<div class="main-box mb-red">--%>
                        <%--<a href="#">--%>
                            <%--<i class="fa fa-bolt fa-5x"></i>--%>
                            <%--<h5>Zero Issues</h5>--%>
                        <%--</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4">--%>
                    <%--<div class="main-box mb-dull">--%>
                        <%--<a href="#">--%>
                            <%--<i class="fa fa-plug fa-5x"></i>--%>
                            <%--<h5>40 Task In Check</h5>--%>
                        <%--</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4">--%>
                    <%--<div class="main-box mb-pink">--%>
                        <%--<a href="#">--%>
                            <%--<i class="fa fa-dollar fa-5x"></i>--%>
                            <%--<h5>200K Pending</h5>--%>
                        <%--</a>--%>
                    <%--</div>--%>
                <%--</div>--%>

            <%--</div>--%>
            <%--<!-- /. ROW  -->--%>

            <%--<div class="row">--%>
                <%--<div class="col-md-8">--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-md-12">--%>

                            <%--<div id="reviews" class="carousel slide" data-ride="carousel">--%>

                                <%--<div class="carousel-inner">--%>
                                    <%--<div class="item active">--%>

                                        <%--<div class="col-md-10 col-md-offset-1">--%>

                                            <%--<h4><i class="fa fa-quote-left"></i>Lorem ipsum dolor sit amet, consectetur adipiscing Lorem ipsum dolor sit amet, consectetur adipiscing elit onec molestie non sem vel condimentum. <i class="fa fa-quote-right"></i></h4>--%>
                                            <%--<div class="user-img pull-right">--%>
                                                <%--<img src="assets/img/user.gif" alt="" class="img-u image-responsive" />--%>
                                            <%--</div>--%>
                                            <%--<h5 class="pull-right"><strong class="c-black">Lorem Dolor</strong></h5>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="item">--%>
                                        <%--<div class="col-md-10 col-md-offset-1">--%>

                                            <%--<h4><i class="fa fa-quote-left"></i>Lorem ipsum dolor sit amet, consectetur adipiscing Lorem ipsum dolor sit amet, consectetur adipiscing elit onec molestie non sem vel condimentum. <i class="fa fa-quote-right"></i></h4>--%>
                                            <%--<div class="user-img pull-right">--%>
                                                <%--<img src="assets/img/user.png" alt="" class="img-u image-responsive" />--%>
                                            <%--</div>--%>
                                            <%--<h5 class="pull-right"><strong class="c-black">Lorem Dolor</strong></h5>--%>
                                        <%--</div>--%>

                                    <%--</div>--%>
                                    <%--<div class="item">--%>
                                        <%--<div class="col-md-10 col-md-offset-1">--%>

                                            <%--<h4><i class="fa fa-quote-left"></i>Lorem ipsum dolor sit amet, consectetur adipiscing  Lorem ipsum dolor sit amet, consectetur adipiscing elit onec molestie non sem vel condimentum. <i class="fa fa-quote-right"></i></h4>--%>
                                            <%--<div class="user-img pull-right">--%>
                                                <%--<img src="assets/img/user.gif" alt="" class="img-u image-responsive" />--%>
                                            <%--</div>--%>
                                            <%--<h5 class="pull-right"><strong class="c-black">Lorem Dolor</strong></h5>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<!--INDICATORS-->--%>
                                <%--<ol class="carousel-indicators">--%>
                                    <%--<li data-target="#reviews" data-slide-to="0" class="active"></li>--%>
                                    <%--<li data-target="#reviews" data-slide-to="1"></li>--%>
                                    <%--<li data-target="#reviews" data-slide-to="2"></li>--%>
                                <%--</ol>--%>
                                <%--<!--PREVIUS-NEXT BUTTONS-->--%>

                            <%--</div>--%>

                        <%--</div>--%>

                    <%--</div>--%>
                    <%--<!-- /. ROW  -->--%>
                    <%--<hr />--%>

                    <%--<div class="panel panel-default">--%>

                        <%--<div id="carousel-example" class="carousel slide" data-ride="carousel" style="border: 5px solid #000;">--%>

                            <%--<div class="carousel-inner">--%>
                                <%--<div class="item active">--%>

                                    <%--<img src="assets/img/slideshow/1.jpg" alt="" />--%>

                                <%--</div>--%>
                                <%--<div class="item">--%>
                                    <%--<img src="assets/img/slideshow/2.jpg" alt="" />--%>

                                <%--</div>--%>
                                <%--<div class="item">--%>
                                    <%--<img src="assets/img/slideshow/3.jpg" alt="" />--%>

                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<!--INDICATORS-->--%>
                            <%--<ol class="carousel-indicators">--%>
                                <%--<li data-target="#carousel-example" data-slide-to="0" class="active"></li>--%>
                                <%--<li data-target="#carousel-example" data-slide-to="1"></li>--%>
                                <%--<li data-target="#carousel-example" data-slide-to="2"></li>--%>
                            <%--</ol>--%>
                            <%--<!--PREVIUS-NEXT BUTTONS-->--%>
                            <%--<a class="left carousel-control" href="#carousel-example" data-slide="prev">--%>
                                <%--<span class="glyphicon glyphicon-chevron-left"></span>--%>
                            <%--</a>--%>
                            <%--<a class="right carousel-control" href="#carousel-example" data-slide="next">--%>
                                <%--<span class="glyphicon glyphicon-chevron-right"></span>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<!-- /.REVIEWS &  SLIDESHOW  -->--%>
                <%--<div class="col-md-4">--%>

                    <%--<div class="panel panel-default">--%>
                        <%--<div class="panel-heading">--%>
                            <%--Recent Chat History--%>
                        <%--</div>--%>
                        <%--<div class="panel-body" style="padding: 0;">--%>
                            <%--<div class="chat-widget-main">--%>


                                <%--<div class="chat-widget-left">--%>
                                    <%--Lorem ipsum dolor sit amet, consectetur adipiscing elit.--%>
                                <%--</div>--%>
                                <%--<div class="chat-widget-name-left">--%>
                                    <%--<h4>Amanna Seiar</h4>--%>
                                <%--</div>--%>
                                <%--<div class="chat-widget-right">--%>
                                    <%--Lorem ipsum dolor sit amet, consectetur adipiscing elit.--%>
                                <%--</div>--%>
                                <%--<div class="chat-widget-name-right">--%>
                                    <%--<h4>Donim Cruseia </h4>--%>
                                <%--</div>--%>
                                <%--<div class="chat-widget-left">--%>
                                    <%--Lorem ipsum dolor sit amet, consectetur adipiscing elit.--%>
                                <%--</div>--%>
                                <%--<div class="chat-widget-name-left">--%>
                                    <%--<h4>Amanna Seiar</h4>--%>
                                <%--</div>--%>
                                <%--<div class="chat-widget-right">--%>
                                    <%--Lorem ipsum dolor sit amet, consectetur adipiscing elit.--%>
                                <%--</div>--%>
                                <%--<div class="chat-widget-name-right">--%>
                                    <%--<h4>Donim Cruseia </h4>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="panel-footer">--%>
                            <%--<div class="input-group">--%>
                                <%--<input type="text" class="form-control" placeholder="Enter Message" />--%>
                                <%--<span class="input-group-btn">--%>
                                        <%--<button class="btn btn-success" type="button">SEND</button>--%>
                                    <%--</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>

                <%--</div>--%>
                <%--<!--/.Chat Panel End-->--%>
            <%--</div>--%>
            <%--<!-- /. ROW  -->--%>
        <%--</div>--%>
        <%--<!--/.Row-->--%>
        <%--<hr />--%>
    <%--</div>--%>
    <sitemesh:write property='body' />
</div>

<div id="footer-sec">
    Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
</div>
<!-- /. FOOTER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
</body>
</html>
