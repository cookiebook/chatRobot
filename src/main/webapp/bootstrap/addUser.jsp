<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <base href="http://localhost:8080/ChatRobot/bootstrap/" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>模板之家</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <%--弹窗实现--%>
    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="jqueryui/style.css">
    <style>
        body { font-size: 62.5%; }
        label, input { display:block; }
        input.text { margin-bottom:12px; width:95%; padding: .4em; }
        fieldset { padding:0; border:0; margin-top:25px; }
        h1 { font-size: 1.2em; margin: .6em 0; }
        div#users-contain { width: 350px; margin: 20px 0; }
        div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
        div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
        .ui-dialog .ui-state-error { padding: .3em; }
        .validateTips { border: 1px solid transparent; padding: 0.3em; }
    </style>
    <script>
        $(function() {
            var name = $( "#name" ),
                email = $( "#email" ),
                password = $( "#password" ),
                allFields = $( [] ).add( name ).add( email ).add( password ),
                tips = $( ".validateTips" );

            function updateTips( t ) {
                tips
                    .text( t )
                    .addClass( "ui-state-highlight" );
                setTimeout(function() {
                    tips.removeClass( "ui-state-highlight", 1500 );
                }, 500 );
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

                        bValid = bValid && checkLength( name, "username", 3, 16 );
                        bValid = bValid && checkLength( email, "email", 6, 80 );
                        bValid = bValid && checkLength( password, "password", 5, 16 );

                        bValid = bValid && checkRegexp( name, /^[a-z]([0-9a-z_])+$/i, "用户名必须由 a-z、0-9、下划线组成，且必须以字母开头。" );
                        // From jquery.validate.js (by joern), contributed by Scott Gonzalez: http://projects.scottsplayground.com/email_address_validation/
                        bValid = bValid && checkRegexp( email, /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i, "eg. ui@jquery.com" );
                        bValid = bValid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "密码字段只允许： a-z 0-9" );

                        if ( bValid ) {
                            $( "#users tbody" ).append( "<tr>" +
                                "<td>" + name.val() + "</td>" +
                                "<td>" + email.val() + "</td>" +
                                "<td>" + password.val() + "</td>" +
                                "</tr>" );
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
                    $( "#dialog-form" ).dialog( "open" );
                });
        });
    </script>
</head>
<body>

<div id="dialog-form" title="创建新用户">
    <p class="validateTips">所有的表单字段都是必填的。</p>

    <form>
        <fieldset>
            <label for="name">名字</label>
            <input type="text" name="name" id="name" class="text ui-widget-content ui-corner-all">
            <label for="email">邮箱</label>
            <input type="text" name="email" id="email" value="" class="text ui-widget-content ui-corner-all">
            <label for="password">密码</label>
            <input type="password" name="password" id="password" value="" class="text ui-widget-content ui-corner-all">
        </fieldset>
    </form>
</div>
<button id="create-user">创建新用户</button>
<div id="wrapper">
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
                            员工信息填写
                        </div>

                        <div class="panel-body">
                            <form action="${pageContext.request.contextPath}/view/addSales">
                                <div class="form-group">
                                <label>姓名</label>
                                <input class="form-control" type="text" name="realname" >
                            </div>
                                <div class="form-group">
                                    <label>职位</label>
                                    <input class="form-control" type="text" name="position" >
                                </div>
                                <div class="form-group">
                                    <label>电话号码</label>
                                    <input class="form-control" name="phoneNo" type="text" >
                                </div>
                                <div class="form-group">
                                    <label>性别</label>
                                    <input class="form-control" name="sex" type="text" >
                                </div>
                                <div class="form-group">
                                    <label>密码</label>
                                    <input class="form-control" name="password" type="password"  >
                                </div>
                                <div class="form-group">
                                    <label>确认密码 </label>
                                    <input class="form-control"  name="rpassword"type="password">
                                </div>
                                <button type="submit" class="btn btn-danger" >确定</button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
            <!--/.ROW-->


            </div>

        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
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
<!-- CUSTOM SCRIPTS -->
<script src="assets/js/custom.js"></script>


</body>
</html>
