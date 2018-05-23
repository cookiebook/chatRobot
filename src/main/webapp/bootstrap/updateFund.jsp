<!DOCTYPE html>
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
                           基金更新
                        </div>
                        <div class="panel-body">
                            <form role="form" action="http://localhost:8080/ChatRobot/Fund/updateFund">
                                <div class="form-group">
                                    <input class="form-control" type="hidden" name="fNo"  value="${param.fNo}">
                                </div>
                                <div class="form-group">
                                    <label>基金名称</label>
                                    <input class="form-control" readonly="readonly" type="text"  name="fName"  value="${param.fName}">
                                </div>
                                        <div class="form-group">
                                            <label>类型</label>
                                            <select id="content" class="form-control" name="type">
                                                <option value="股票型">股票型</option>
                                                <option value="债券型">债券型</option>
                                                <option value="指数型">指数型</option>
                                            </select>
                                            <%--<input class="form-control" type="text" name="type" value="${param.type}">--%>
                                        </div>
                                            <div class="form-group">
                                            <label>价格</label>
                                            <input class="form-control" type="text" name="price" value="${param.price}">
                                        </div>
                                <div class="form-group">
                                    <label>公司</label>
                                    <input class="form-control" type="text" name="company" value="${param.company}">
                                </div>
                                <div class="form-group">
                                    <label>描述</label>
                                    <input class="form-control" type="text" name="description" value="${param.description}">
                                </div>
                                <div class="form-group">
                                    <label>基金状态</label>
                                    <select id="content" class="form-control" name="state">
                                        <option value="开放">开放</option>
                                        <option value="暂停">暂停</option>
                                    </select>
                                    <%--<input class="form-control" type="text" name="state" value="${param.state}">--%>
                                </div>
                                        <button type="submit" class="btn btn-danger">update</button>
                                    </form>
                            </div>
                        </div>
                            </div>
        </div>
             <!--/.ROW-->



                            <hr>

        </div>
        </div>
        </div>
        <!-- /. PAGE WRAPPER  -->
    <!-- /. WRAPPER  -->
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


</body>
</html>
