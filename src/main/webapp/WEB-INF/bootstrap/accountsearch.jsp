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
            var setTotalCount = AjaxGeta('http://localhost:8080/ChatRobot/account/searchCount', " ");
            $('#box').paging({
                initPageNo: 1, // 初始页码
                totalPages: Math.ceil(setTotalCount/10), //总页数
                totalCount: '合计' + setTotalCount + '条数据', // 条目总数AjaxGet("http://localhost:8080/ChatRobot/sales/searchCount","")
                slideSpeed: 600, // 缓动速度。单位毫秒
                jump: true, //是否支持跳转
                callback: function (page) { // 回调函数
                    console.log(page);
                    AjaxGeta('http://localhost:8080/ChatRobot/account/myProductPage', page);
                }
            })
        })






    </script>
    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script>
        $(function() {
            var sex;
            var cName = $( "#cName" ),
                idCard = $( "#idCard" ),
                phone = $( "#phone" ),
                sex1 = $( "#sex1" ),
                sex2 = $( "#sex2" ),
                email = $( "#email" ),
                address = $( "#address" ),
                hobby = $( "#hobby" ),
                allFields = $( [] ).add( cName ).add( idCard ).add( phone ).add( sex1 ).add( sex2 ).add( email ).add( address ).add( hobby ),
                tips = $( ".validateTips" );

            function updateTips( t ) {
                tips
                    .text( t )
                    .addClass( "ui-state-highlight" );
                setTimeout(function() {
                    tips.removeClass( "ui-state-highlight", 1500 );
                }, 500 );
            }

            function center(obj) {
                var screenWidth = $(window).width();
                screenHeight = $(window).height(); //当前浏览器窗口的 宽高
                var scrolltop = $(document).scrollTop();//获取当前窗口距离页面顶部高度
                var objLeft = (screenWidth - obj.width()) / 2;
                var objTop = (screenHeight - obj.height()) / 2 + scrolltop;
                obj.css({left: objLeft + 'px', top: objTop + 'px', 'display': 'block'});
//浏览器窗口大小改变时
                $(window).resize(function () {
                    screenWidth = $(window).width();
                    screenHeight = $(window).height();
                    scrolltop = $(document).scrollTop();
                    objLeft = (screenWidth - obj.width()) / 2;
                    objTop = (screenHeight - obj.height()) / 2 + scrolltop;
                    obj.css({left: objLeft + 'px', top: objTop + 'px', 'display': 'block'});
                });
            }



            function checkLength( o, n, min, max ) {
                if ( o.val().length > max || o.val().length < min ) {
                    o.addClass( "ui-state-error" );
                    updateTips( "" + n + " 的长度必须在 " +
                        min + " 和 " + max + " 之间。" );
                    return false;
                } else {
                    return true;
                }
            }

            function checkRegexp( o, regexp, n ) {
                if ( !( regexp.test( o.val() ) ) ) {
                    o.addClass( "ui-state-error" );
                    updateTips( n );
                    return false;
                } else {
                    return true;
                }
            }

            $( "#dialog-form" ).dialog({
                autoOpen: false,
                height: 300,
                width: 350,
                modal: true,
                buttons: {
                    "创建一个帐户": function() {
                        var bValid = true;
                        allFields.removeClass( "ui-state-error" );

//                        bValid = bValid && checkLength( cName, "username", 3, 16 );
                        bValid = bValid && checkLength( email, "email", 6, 80 );
                        bValid = bValid && checkLength( phone, "phone", 11, 11 );
//                        bValid = bValid && checkLength( rpassword, "password", 5, 16 );

//                        bValid = bValid && checkRegexp( cName, /^[a-z]([0-9a-z_])+$/i, "用户名必须由 a-z、0-9、下划线组成，且必须以字母开头。" );
                        // From jquery.validate.js (by joern), contributed by Scott Gonzalez: http://projects.scottsplayground.com/email_address_validation/
                        bValid = bValid && checkRegexp( email, /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i, "eg. ui@jquery.com" );
//                        bValid = bValid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "密码字段只允许： a-z 0-9" );
//                        bValid = bValid && checkRegexp( rpassword, /^([0-9a-zA-Z])+$/, "密码字段只允许： a-z 0-9" );
                        if ( bValid ) {
                            var json={"cName":cName.val(),"idCard":idCard.val(),"sex":$("input[name='sex']:checked").val(),"phone":phone.val()
                                ,"hobby":hobby.val(),"email":email.val(),"address":address.val()};
                            $.ajax({
                                url: "http://localhost:8080/ChatRobot/account/addaccount",
                                type: 'post',
                                data:json,
                                async:false,
                                success: function (json) {
                                    alert("成功");
                                },
                                error: function (e) {
                                    //失败后回调
                                    alert("服务器请求失败");
                                },
                            })
                            $( this ).dialog( "close" );
                        }
                    },
                    Cancel: function() {
                        $( this ).dialog( "close" );
                    }
                },
                close: function() {
                    allFields.val( "" ).removeClass( "ui-state-error" );
                }
            });

            $( "#create-user" )
                .button()
                .click(function() {
                    center($('.dialog-form'));
                    $( "#dialog-form" ).dialog( "open" );

                })
        });
    </script>


</head>
<body>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">

                        <div class="panel-body" id="dialog-form" title="创建新用户">
                            <p class="validateTips">所有的表单字段都是必填的。</p>
                            <form action="${pageContext.request.contextPath}/account/addSales" >
                                <div class="form-group">
                                    <label for="cName">名字</label>
                                    <input type="text" name="cName" id="cName" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="idCard">身份证号</label>
                                    <input type="text" name="idCard" id="idCard" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="phone">电话</label>
                                    <input type="text" name="phone" id="phone" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="sex1">男</label>
                                    <input type="radio" name="sex" id="sex1" value="男" checked >
                                <label for="sex2">女</label>
                                    <input type="radio" name="sex" id="sex2"  value="女">
                                </div>
                                <div class="form-group">
                                    <label for="email">email</label>
                                    <input type="text" name="email" id="email" value="" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="address">地址</label>
                                    <input type="text" name="address" id="address" value="" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="hobby">爱好</label>
                                    <input type="text" name="hobby" id="hobby" value="" class="form-control">
                                </div>
                            </form>
                        </div>


                <div class="row">
                    <div class="col-md-12">
                            <div class="form-group input-group col-md-6 col-md-offset-3">
                                <input type="text" class="form-control" placeholder="Enter Keywords" id="searchaccount" />
                                <span class="input-group-btn">
                                <input class="btn btn-primary" value="SEARCH" onclick="selectaccountPage()"  type="button "/>
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
                    <a class="btn btn-inverse" href="http://localhost:8080/ChatRobot/bootstrap/insertaccount.jsp" ><i class="glyphicon glyphicon-plus"></i>ADD</a>
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


















