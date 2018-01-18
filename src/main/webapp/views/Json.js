/**
 * Created by Cookbooks on 2018/1/5.
 */
$(document).ready(function () {

    $(document).ready(function () {
        $("button").click(function () {
            $("p").hide();
            $.ajax({
                url: 'http://localhost:8080/ChatRobot/user/requestJson',
                contentType: "application/json",
                type: 'post',
                data: '{"password":"123456"}',
                success: function (e) {
                    //成功后回调
                    alert("成功");
                    var json = eval(e); //数组
                    $.each(json, function (index, item) {
                        //循环获取数据
                        var id = json[index].id;
                        var name = json[index].name;
                        var password = json[index].password;
                        $("#list").html($("#list").html() + "<br>" + id + " - " + name + " - " + password + "<br/>");

                    });
                },
                error: function (e) {
                    //失败后回调
                    alert("服务器请求失败");
                },
                beforeSend: function () {
                    //发送请求前调用，可以放一些"正在加载"之类额话
                    alert("正在加载");
                }
            })


        })
    })

})



//        $("button").click(function () {
//            $.noConflict();
//        $.ajax({
//            type : "post",
//            url : "https://localhost:8080/ChatRobot/user/requestJson",
//            contentType : "application/json;charset=utf-8",
//            //数据格式是json串,传进一个person
//            data : '{"id" :1}',
////            data:JSON.stringify([{'id':1}]),
//                success:function(data){
//                    alert(成功);
//                },
//            error:function(data){
//                alert("error");
//            }
//        });


//        alert("error");



//    $.get('http://localhost:8080/ChatRobot/user/views/getKeyMap',{result:result}, function (data) {
//        if (data) {
//            alert(data);
////            $("#save").submit();
//        }
//    });










//        $.post("/ChatRobot/user/requestJson",{id:'123'},
//                  function(data,state){
//               //这里显示从服务器返回的数据
//               alert(data);
//              //这里显示返回的状态
//                if(state == 'ok'){
//                     alert("返回数据成功");
//                    }else{
//                          alert("返回数据失败");
//                      }},
//                      "json");



//        $.get("submit.php",{id:'123',name:'小王',},function(data,state){
//
//                    //这里显示从服务器返回的数据
//                        alert(data);
//                    //这里显示返回的状态
//                 if(state == 'ok'){
//                          alert("返回数据成功");
//                        }else{
//                           alert("返回数据失败");
//                     }
//             });








//可以访问服务器
function loadXMLDoc()
{
    var xmlhttp;
    if (window.XMLHttpRequest)
    {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
    }
    else
    {// code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
        }
    }
    xmlhttp.open("post","/user/requestJson",true);
    xmlhttp.send();
}



//可以传json数据
// function loadXMLDoc()
// {
//     var xmlhttp;
//     if (window.XMLHttpRequest)
//     {// code for IE7+, Firefox, Chrome, Opera, Safari
//         xmlhttp=new XMLHttpRequest();
//     }
//     else
//     {// code for IE6, IE5
//         xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
//     }
//     xmlhttp.onreadystatechange=function()
//     {
//         if (xmlhttp.readyState==4 && xmlhttp.status==200)
//         {
//             document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
//         }
//     }
//     xmlhttp.open("post","/user/requestJson",true);
//     xmlhttp.setRequestHeader("Content-type", "application/json");
//     xmlhttp.send('{"id":1}');
// }