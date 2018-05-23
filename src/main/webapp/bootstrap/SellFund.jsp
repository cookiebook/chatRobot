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
                           SINGUP FORM
                        </div>
                        <div class="panel-body">
                            <form role="form" action="http://localhost:8080/ChatRobot/Fund/SFund">
                                <div class="form-group">
                                    <input class="form-control" type="hidden" name="id" readonly="readonly"  value="${sessionScope.fundaccount.id}">
                                </div>
                                <div class="form-group">
                                    <label>客户ID</label>
                                    <input class="form-control" type="text"  name="cId" readonly="readonly"  value="${sessionScope.fundaccount.cId}">
                                </div>
                                        <div class="form-group">
                                            <label>资金账号</label>
                                            <input class="form-control" type="text" name="acNum" readonly="readonly" value="${sessionScope.fundaccount.acNum}">
                                        </div>
                                <div class="form-group">
                                    <label>基金ID</label>
                                    <input class="form-control" type="text" name="fNo"  readonly="readonly" value="${sessionScope.fundaccount.fNo}">
                                </div>
                                            <div class="form-group">
                                            <label>价格</label>
                                            <input class="form-control" type="text" name="sprice"  readonly="readonly" value="${sessionScope.price}">
                                        </div>
                                <div class="form-group">
                                    <label>剩余基金总额</label>
                                    <input class="form-control" type="text" name="price" readonly="readonly" value="${sessionScope.fundaccount.price}">
                                </div>
                                <div class="form-group">
                                    <label>赎回金额</label>
                                    <input class="form-control" type="text" name="count">
                                </div>
                                <div class="form-group">
                                    <label>密码</label>
                                    <input class="form-control" type="password" name="password">
                                </div>
                                        <button type="submit" class="btn btn-danger">ensure</button>
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
