<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Cookbooks
  Date: 2018/1/8
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="jquery-3.2.1.js"></script>
    <%--<script type=text/javascript defer>--%>
        <%--function reading () {--%>
            <%--$.ajax({--%>
                <%--url: 'http://localhost:8080/ChatRobot/views/myProductPage',--%>
                <%--type: 'get',--%>
                <%--success: function (json) {--%>
                    <%--//成功后回调--%>
                    <%--alert("成功");--%>
<%--//                    var json = eval(e); //数组--%>
                    <%--$.each(json, function (index, item) {--%>
                        <%--//循环获取数据--%>
                        <%--var id = json[index].id;--%>
                        <%--var name = json[index].name;--%>
                        <%--var password = json[index].password;--%>
                        <%--$("#list").html($("#list").html() + "<br>" + id + " - " + name + " - " + password + "<br/>");--%>

                    <%--});--%>
                <%--},--%>
                <%--error: function (e) {--%>
                    <%--//失败后回调--%>
                    <%--alert("服务器请求失败");--%>
                <%--},--%>
                <%--beforeSend: function () {--%>
                    <%--//发送请求前调用，可以放一些"正在加载"之类额话--%>
                    <%--alert("正在加载");--%>
                <%--}--%>
            <%--})--%>
        <%--}--%>
    <%--</script>--%>

    <script type="text/javascript">
        function reading () {
            $.ajax({
                url: 'http://localhost:8080/ChatRobot/views/myProductPage',
                type: 'get',
                success: function (json) {
                    //成功后回调
                    alert("成功");
//                    var json = eval(e); //数组
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
        }

//        var t2 = window.setTimeout("reading()",3000);
//        window.onload=reading();
    </script>
</head>
<body onload="reading()">
<button type="button" onclick="reading()" >加载</button>
<ul id="list">
    <li></li>
</ul>
<div align="center">
    <c:forEach items="${products}" var="person">
    <tr>
        <td>${person.id}</td>
        <td>${person.name}</td>
        <td>${person.password}</td>
    </tr>
    </c:forEach>
    <font size="2">共 ${page.totalPageCount} 页</font> <font size="2">第
    ${page.pageNow} 页</font> <a href="myProductPage?pageNow=1">首页</a>
    <c:choose>
        <c:when test="${page.pageNow - 1 > 0}">
            <a href="myProductPage?pageNow=${page.pageNow - 1}">上一页</a>
        </c:when>
        <c:when test="${page.pageNow - 1 <= 0}">
            <a href="myProductPage?pageNow=1">上一页</a>
        </c:when>
    </c:choose>
    <c:choose>
        <c:when test="${page.totalPageCount==0}">
            <a href="myProductPage?pageNow=${page.pageNow}">下一页</a>
        </c:when>
        <c:when test="${page.pageNow + 1 < page.totalPageCount}">
            <a href="myProductPage?pageNow=${page.pageNow + 1}">下一页</a>
        </c:when>
        <c:when test="${page.pageNow + 1 >= page.totalPageCount}">
            <a href="myProductPage?pageNow=${page.totalPageCount}">下一页</a>
        </c:when>
    </c:choose>
    <c:choose>
        <c:when test="${page.totalPageCount==0}">
            <a href="myProductPage?pageNow=${page.pageNow}">尾页</a>
        </c:when>
        <c:otherwise>
            <a href="myProductPage?pageNow=${page.totalPageCount}">尾页</a>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
