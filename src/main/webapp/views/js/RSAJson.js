/**
 * Created by Cookbooks on 2018/1/12.
 */

//改文件用于向后台传RSA加密后的Json字符串

//get方法传json字符串
var RSAdata;
function RSAJsonByget(result) {
    $.get('http://localhost:8080/ChatRobot/user/views/getKeyMap',result, function (data) {
        if (data) {
            RSAdata=data;
            alert(RSAdata.password);
//            $("#save").submit();
        }
    },"json");

}


function RSAJsonBypost(result) {
    $.ajax({
        url: 'http://localhost:8080/ChatRobot/user/views/getKeyMap',
//        contentType: "application/json; charset=utf-8",
        type: 'post',
        data: result,
        success: function (RSAdata) {
            //成功后回调
            alert(RSAdata.password);
        },
        error: function (RSAdata) {
            //失败后回调
            alert("服务器请求失败");
        },
        beforeSend: function () {
            //发送请求前调用，可以放一些"正在加载"之类额话
            alert("正在加载");
        }
    })

}