/**
 * Created by Cookbooks on 2018/1/12.
 */

//该文件用于向后台传RSA加密后的Json字符串

//get方法传json字符串
// function AjaxGet(u,page) {
//     $.get(u,page, function (data) {
//         if (data) {
//             alert(data);
// //            $("#save").submit();
//         }
//     },"json");
//
// }
// function AjaxPost(result) {
//     $.ajax({
//         url: 'http://localhost:8080/ChatRobot/login/view/login',
// //        contentType: "application/json; charset=utf-8",
//         type: 'post',
//         data: result,
//         success: function (RSAdata) {
//             //成功后回调
//             alert(RSAdata.password);
//             // window.open("http://localhost:8080/ChatRobot/view/index.jsp");
//         },
//         error: function (RSAdata) {
//             //失败后回调
//             alert("服务器请求失败");
//         },
//         beforeSend: function () {
//             //发送请求前调用，可以放一些"正在加载"之类额话
//             alert("正在加载");
//         }
//     })
//
// }

//发送POST请求跳转到指定页面
function httpPost(URL, PARAMS) {
    var temp = document.createElement("form");
    temp.action = URL;
    temp.method = "post";
    temp.style.display = "none";

    for (var x in PARAMS) {
        var opt = document.createElement("textarea");
        opt.name = x;
        opt.value = PARAMS[x];
        temp.appendChild(opt);
    }
    document.body.appendChild(temp);
    temp.submit();
    return temp;
}



var c_start,username,c_end;
function getCookie(c_name)
{
    if (document.cookie.length>0)
    {
        c_start=document.cookie.indexOf(c_name + "=")
        if (c_start!=-1)
        {
            c_start=c_start + c_name.length+1
            c_end=document.cookie.indexOf(";",c_start)
            if (c_end==-1) c_end=document.cookie.length
            return unescape(document.cookie.substring(c_start,c_end))
        }
    }
    return ""
}

function setCookie(c_name,value,expiredays)
{
    var exdate=new Date()
    exdate.setDate(exdate.getDate()+expiredays)
    document.cookie=c_name+ "=" +escape(value)+
        ((expiredays==null) ? "" : ";expires=" + exdate.toGMTString() + ";path=/")
}


function delCookie(name)
{
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval=getCookie(name);
    if(cval!=null)
        document.cookie= name + "="+cval+";expires="+exp.toGMTString();
}

function checkCookie(c)
{
    username=getCookie(c)
    if (username!=null && username!="")
    {
        var arr=username.split("&");
       $("#username").val(arr[0]);
        $("#password").val(arr[1]);
    }
}

function saveCookie(t,pwd) {
    if(confirm("是否要保存该用户？"))
    {
        delCookie(t);
        setCookie(t,pwd,30);
    }
}
