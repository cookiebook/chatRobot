<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script type="text/javascript" src="assets/js/Sales.js"></script>
    <script type="text/javascript" src="assets/js/RSAJson.js"></script>
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
            var realname = $( "#realname" ),
                position = $( "#position" ),
                phoneNo = $( "#phoneNo" ),
                sex = $( "#sex" ),
                password = $( "#password" ),
                rpassword = $( "#rpassword" ),
                allFields = $( [] ).add( realname ).add( position ).add( phoneNo ).add( sex ).add( password ).add( rpassword ),
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

                        bValid = bValid && checkLength( realname, "username", 3, 16 );
//                        bValid = bValid && checkLength( email, "email", 6, 80 );
                        bValid = bValid && checkLength( password, "password", 5, 16 );
                        bValid = bValid && checkLength( rpassword, "password", 5, 16 );

                        bValid = bValid && checkRegexp( realname, /^[a-z]([0-9a-z_])+$/i, "用户名必须由 a-z、0-9、下划线组成，且必须以字母开头。" );
                        // From jquery.validate.js (by joern), contributed by Scott Gonzalez: http://projects.scottsplayground.com/email_address_validation/
//                        bValid = bValid && checkRegexp( email, /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i, "eg. ui@jquery.com" );
                        bValid = bValid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "密码字段只允许： a-z 0-9" );
                        bValid = bValid && checkRegexp( rpassword, /^([0-9a-zA-Z])+$/, "密码字段只允许： a-z 0-9" );
                        if ( bValid ) {
                            var json={"realname":realname.val(),"position":position.val(),"sex":sex.val(),"phoneNo":phoneNo.val()
                                ,"password":password.val()};
//                            var param={"sales":json,"rpassword":rpassword.val()};
                            $.ajax({
                                url: "http://localhost:8080/ChatRobot/view/addSales",
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
                                // beforeSend: function () {

                                // }
                            })
                            $( this ).dialog( "close" );
//                            httpPost("http://localhost:8080/ChatRobot/view/addSales",param);

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

    <form action="${pageContext.request.contextPath}/view/addSales" >
        <fieldset>
            <label for="realname">名字</label>
            <input type="text" name="realname" id="realname" class="text ui-widget-content ui-corner-all">
            <label for="position">职位</label>
            <input type="text" name="position" id="position" class="text ui-widget-content ui-corner-all">
            <label for="phoneNo">电话</label>
            <input type="text" name="phoneNo" id="phoneNo" class="text ui-widget-content ui-corner-all">
            <label for="sex">性别</label>
            <input type="text" name="sex" id="sex" class="text ui-widget-content ui-corner-all">
            <label for="password">密码</label>
            <input type="password" name="password" id="password" value="" class="text ui-widget-content ui-corner-all">
            <label for="password">确认密码</label>
            <input type="password" name="rpassword" id="rpassword" value="" class="text ui-widget-content ui-corner-all">
        </fieldset>
    </form>
</div>
<button id="create-user">创建新用户</button>


</body>
</html>