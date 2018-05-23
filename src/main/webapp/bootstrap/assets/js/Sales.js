/**
 * Created by Cookbooks on 2018/1/18.
 */

function selsales(c) {
    httpPost("http://localhost:8080/ChatRobot/view/selsales",c);

}

function searchSales(){
    var tmp=document.getElementById("searchSales").value;
    tmp={"param":tmp};
    httpPost("http://localhost:8080/ChatRobot/sales/searchSales",tmp);
}



function selectSalesPage() {
    var size=10;
    var param=document.getElementById("searchSales").value;
    var setTotalCount = AjaxGet('http://localhost:8080/ChatRobot/sales/searchCount', param);
    $('#box').paging({
        initPageNo: 1, // 初始页码
        totalPages: Math.ceil(setTotalCount/size), //总页数
        totalCount: '合计' + setTotalCount + '条数据', // 条目总数AjaxGet("http://localhost:8080/ChatRobot/sales/searchCount","")
        slideSpeed: 600, // 缓动速度。单位毫秒
        jump: true, //是否支持跳转
        callback: function (page) { // 回调函数
            console.log(page);
            AjaxGet('http://localhost:8080/ChatRobot/sales/myProductPage', page);
        }
    })
}


function selectcustomPage() {
    var size=10;
    var param=document.getElementById("searchcustom").value;
    var setTotalCount = AjaxGetc('http://localhost:8080/ChatRobot/custom/searchCount', param);
    $('#box').paging({
        initPageNo: 1, // 初始页码
        totalPages: Math.ceil(setTotalCount/size), //总页数
        totalCount: '合计' + setTotalCount + '条数据', // 条目总数AjaxGet("http://localhost:8080/ChatRobot/sales/searchCount","")
        slideSpeed: 600, // 缓动速度。单位毫秒
        jump: true, //是否支持跳转
        callback: function (page) { // 回调函数
            console.log(page);
            AjaxGetc('http://localhost:8080/ChatRobot/custom/myProductPage', page);
        }
    })
}


function selectaccountPage() {
    var size=10;
    var param=document.getElementById("searchaccount").value;
    var setTotalCount = AjaxGeta('http://localhost:8080/ChatRobot/account/searchCount', param);
    $('#box').paging({
        initPageNo: 1, // 初始页码
        totalPages: Math.ceil(setTotalCount/size), //总页数
        totalCount: '合计' + setTotalCount + '条数据', // 条目总数AjaxGet("http://localhost:8080/ChatRobot/sales/searchCount","")
        slideSpeed: 600, // 缓动速度。单位毫秒
        jump: true, //是否支持跳转
        callback: function (page) { // 回调函数
            console.log(page);
            AjaxGeta('http://localhost:8080/ChatRobot/account/myProductPage', page);
        }
    })
}


function selectLogPage(){
    var size=10;
    var param=document.getElementById("searchLog").value;
    var setTotalCount = AjaxGetL('http://localhost:8080/ChatRobot/Log/searchCount', param);
    $('#box').paging({
        initPageNo: 1, // 初始页码
        totalPages: Math.ceil(setTotalCount/size), //总页数
        totalCount: '合计' + setTotalCount + '条数据', // 条目总数AjaxGet("http://localhost:8080/ChatRobot/sales/searchCount","")
        slideSpeed: 600, // 缓动速度。单位毫秒
        jump: true, //是否支持跳转
        callback: function (page) { // 回调函数
            console.log(page);
            AjaxGetL('http://localhost:8080/ChatRobot/Log/myProductPage', page);
        }
    })
}


function selectfundaccountPage() {
    var size=$('#SIZE').val();
    var param=document.getElementById("searchaccount").value;
    var setTotalCount = AjaxGeta('http://localhost:8080/ChatRobot/fundaccount/searchCount', param);
    $('#box').paging({
        initPageNo: 1, // 初始页码
        totalPages: Math.ceil(setTotalCount/size), //总页数
        totalCount: '合计' + setTotalCount + '条数据', // 条目总数AjaxGet("http://localhost:8080/ChatRobot/sales/searchCount","")
        slideSpeed: 600, // 缓动速度。单位毫秒
        jump: true, //是否支持跳转
        callback: function (page) { // 回调函数
            console.log(page);
            AjaxGeta('http://localhost:8080/ChatRobot/fundaccount/myProductPage', page);
        }
    })
}

function selectFundPage(flag){
    var size=10;
    var param=document.getElementById("searchFund").value;
    var setTotalCount = AjaxGetF('http://localhost:8080/ChatRobot/Fund/searchCount', param,flag);
    $('#box').paging({
        initPageNo: 1, // 初始页码
        totalPages: Math.ceil(setTotalCount/size), //总页数
        totalCount: '合计' + setTotalCount + '条数据', // 条目总数AjaxGet("http://localhost:8080/ChatRobot/sales/searchCount","")
        slideSpeed: 600, // 缓动速度。单位毫秒
        jump: true, //是否支持跳转
        callback: function (page) { // 回调函数
            console.log(page);
            AjaxGetF('http://localhost:8080/ChatRobot/Fund/myProductPage', page,flag);
        }
    })
}

function AjaxGet(url,page) {
    var res=0;
$.ajax({
    url: url,
    type: 'get',
    data:{"page":page},
    async:false,
    success: function (json) {
        res=json;
        createShowingTable(json,page);
    },
    error: function (e) {
        //失败后回调
        alert("服务器请求失败");
    },
    // beforeSend: function () {

    // }
})
    return res;
}



function AjaxGetrecommend(url) {
    $.ajax({
        url: url,
        type: 'get',
        async:false,
        success: function (json) {
            createShowingrecommend(json);
        },
        error: function (e) {
            alert("服务器请求失败");
        },
    })
    return res;
}

function AjaxGeta(url,page) {
    var res=0;
    $.ajax({
        url: url,
        type: 'get',
        data:{"page":page},
        async:false,
        success: function (json) {
            res=json;
            createShowingaccount(json,page);
        },
        error: function (e) {
            alert("服务器请求失败");
        },

    })
    return res;
}

function AjaxGetc(url,page) {
    var res=0;
    $.ajax({
        url: url,
        type: 'get',
        data:{"page":page},
        async:false,
        success: function (json) {
            res=json;
            createShowingcustom(json,page);
        },
        error: function (e) {
            alert("服务器请求失败");
        },

    })
    return res;
}


function AjaxGetCInfo(url,page,fNo) {
    var res=0;
    $.ajax({
        url: url,
        type: 'get',
        data:{"page":page},
        async:false,
        success: function (json) {
            res=json;
            createShowingaccount1(json,fNo);
        },
        error: function (e) {
            alert("服务器请求失败");
        },

    })
    return res;
}


function AjaxGetL(url,page) {
    var res=0;
    $.ajax({
        url: url,
        type: 'get',
        data:{"page":page},
        async:false,
        success: function (json) {
            res=json;
            createShowingLog(json,page);
        },
        error: function (e) {
            alert("服务器请求失败");
        },

    })
    return res;
}


function AjaxGetF(url,page,flag) {
    var res=0;
    $.ajax({
        url: url,
        type: 'get',
        data:{"page":page},
        async:false,
        success: function (json) {
            res=json;
            createShowingFund(json,page,flag);
        },
        error: function (e) {
            alert("服务器请求失败");
        },

    })
    return res;
}

function AjaxGetFa(url,page,flag) {
    var res=0;
    $.ajax({
        url: url,
        type: 'get',
        data:{"page":page},
        async:false,
        success: function (json) {
            res=json;
            createShowingFa(json,page,flag);
        },
        error: function (e) {
            alert("服务器请求失败");
        },

    })
    return res;
}


// function AjaxGetB(url,page) {
//     var res=0,flag=1;
//     $.ajax({
//         url: url,
//         type: 'get',
//         data:{"page":page},
//         async:false,
//         success: function (json) {
//             res=json;
//             createShowingFund(json,page,flag);
//         },
//         error: function (e) {
//             alert("服务器请求失败");
//         },
//
//     })
//     return res;
// }



function deleteSales(sId){
    httpPost("http://localhost:8080/ChatRobot/view/deleteSales",{"sId":sId});

}

function deleteAll(url) {
    if(confirm("是否要删除所选信息？")) {
        var arr = document.getElementsByName('checkOne');
        var param = "", i;
        for (i = 0; i < arr.length; i++) {
            if (arr[i].checked == true) {
                param += arr[i].value + ",";
            }
        }
        httpPost(url, {"param": param});
    }
}




function checkAll() {
    var arr = document.getElementsByName('checkOne' );
    var i;
    if (document.getElementById('checkAll').checked) {
        for(i=0;i<arr.length;i++){

            arr[i].checked = true;
        }

    }else{
        for(i=0;i<arr.length;i++){
            if((arr[i]).checked=false){
                arr[i].checked = true;
            }else
            {arr[i].checked = false; }
        }
    }
}


function createShowingTable(data,page){
    var tableStr = "<table id='myTable' border='0' width='100'>";
    tableStr = tableStr
        + "<thead><tr class='list-header'>"
        +"<th width='5%'>序号</th>"
        +"<th width='5%'><input id='checkAll' name='checkAll' type='checkbox' onclick='checkAll()' /></th>"
        +"<th width='7%'>S_ID</th>"
        +"<th width='10%'>用户名</th>"
        +"<th width='10%'>密码</th>"
        +"<th width='8%'>真实姓名</th>"
        +"<th width='10%'>电话</th>"
        +"<th width='5%'>权限</th>"
        +"<th width='10%'>职位</th>"
        +"<th width='10%'>修改</th>"
        +"<th width='8%'>删除</th>"
        +"</tr></thead><tbody>";
    var len = data.length;
    for ( var i = 0; i < len; i++) {
        tableStr = tableStr + "<tr>"
            +"<td>"+ ((page-1)*10+i+1) + "</td>"
            +"<td><input class='check' id='checkOne' name='checkOne' type='checkbox' value='"+data[i].sId+"' /></td>"
            +"<td>"+ data[i].sId + "</td>"
            + "<td>"+ data[i].ussername + "</td>"
            + "<td>"+ data[i].password + "</td>"
            +"<td>"+data[i].realname+"</td>"
            + "<td>"+ data[i].phoneNo + "</td>"
            + "<td>"+ data[i].permission + "</td>"
            + "<td>"+ data[i].position + "</td>"
            + "<td><a class='btn btn-inverse'  href='updateSales.jsp?sId="+ data[i].sId + "&position="+ data[i].position + "&ussername="+ data[i].ussername + "&phoneNo="+data[i].phoneNo+"&permission="+data[i].permission+"'>Update</a></td>"
            + "<td><a class='btn btn-danger' href='http://localhost:8080/ChatRobot/view/deleteSales?sId="+data[i].sId+"'>Delete</a></td>"
            +"</tr>";
    }
    if(len==0){
        tableStr = tableStr + "<tr style='text-align: center'>"
            +"<td colspan='6'><font color='#cd0a0a'>"+ 暂无记录 + "</font></td>"
            +"</tr>";
    }
    tableStr = tableStr + "</tbody></table>";
    //添加到div中
    $(".content").html(tableStr);



}


function createShowingrecommend(data){
    var tableStr = "";
    var len = data.length;

    for ( var i = 0; i < len; i++) {
        tableStr = tableStr + "<div class='whiteZone-right'> "
            + "<div> <div class='f-l f-s-22 f-bold f-c-32' title='"+date[i].fName+"'>"
            +"date[i].fName"
            +"</div>"
            +"</div>"
            +"<div class='clearfix'></div>"
            +"<div class='more-xinxi'>"
            +"<div class='f-l'>"
            +"<div class='f-c-5e l-h-18'>单位净值</div>"
            +"<hr>"
            +"<div class='f-c-f5 f-f-a'>"
            +"<div class='f-l f-s-36'>"+date[i].price+"</div>"
            +"<div class='f-l spacial-mar'>"
            +"<span class='dis-block  f-c-green '> -0.53%  </span>"
            +"<span class='dis-block  f-c-green '>-0.0073 </span>"
            +"</div>"
            +"</div>"
            +"<div class='clearfix'></div>"
            +"<div class='f-c-a5 l-h-18'><input type='hidden' id='fNo' value='"+date[i].fNo+"'>"+date[i].fNo+" "+date[i].type+"</div>"
            +"</div>"
            +"<div class='shu-line f-l'></div>"
            +"<div class='f-l m-r-30'>"
            +"<div class='l-h-24'>近一年："
            +"<span class='f-c-red'>"+date[i].syl_1n+"</span>"
            +"</div>"
            +"<div class='l-h-24'>近六个月："
            +"<span class='f-c-red'>"+date[i].syl_6y+"%</span>"
            +"</div>"
            +"<div class='l-h-24'>近3个月："
            +"<span class='f-c-red'>"+date[i].syl_3y+"%</span>"
            +"</div>"
            +"<div class='l-h-24'>近1个月："
            +"<span class='f-c-red'>"+date[i].syl_1y+"%</span>"
            +"</div>"
            +"<div class='l-h-24'>成立日期："
            +"+date[i].sdate}+"
            +"</div>"
            +"<div class='l-h-24'>最低购买额度："
            +""+date[i].fund_minsg+"<input type='hidden' id='minsg' value='${fund.fund_minsg}'>"
            +" </div>"
            +"</div>"
            +"</div>"
            +"<div class='fenjie-line m-t-20 m-b-20'></div>"
            +"<div class='clearfix'></div>"
            +"<p class='m-t-15' id='errorInfo' style='display: none'>"
            +"<img src='picture/gantan.png' alt='' class='m-t-3'/>"
            +"<span class='f-c-red' id='errorMessage'></span>"
            +"</p>"
            +"<p class='m-t-15' id='feeTip'>"
            +"<span>费率</span>"
            +"<del>"+date[i].fund_Rate*10+"</del>"
            +"<span class='f-c-f5'>"+date[i].fund_Rate+"</span>"
            +"<span>,申购成功即扣除</span>"
            +"</p>"
            +"</div>";
    }
    if(len==0){
        tableStr = tableStr + "<tr style='text-align: center'>"
            +"<td colspan='6'><font color='#cd0a0a'>"+ 暂无记录 + "</font></td>"
            +"</tr>";
    }
    tableStr = tableStr + "</tbody></table>";
    //添加到div中
    $(".content").html(tableStr);



}

function createShowingcustom(data,page){
    var tableStr = "<table id='myTable' border='0' width='100'>";
    tableStr = tableStr
        + "<thead><tr class='list-header'>"
        +"<th width='2%'>序号</th>"
        +"<th width='2%'><input id='checkAll' name='checkAll' type='checkbox' onclick='checkAll()' /></th>"
        +"<th width='7%'>ID</th>"
        +"<th width='10%'>名字</th>"
        +"<th width='10%'>身份证</th>"
        +"<th width='2%'>性别</th>"
        +"<th width='10%'>电话</th>"
        +"<th width='15%'>地址</th>"
        +"<th width='10%'>EMAIL</th>"
        +"<th width='10%'>修改</th>"
        +"<th width='8%'>删除</th>"
        +"</tr></thead><tbody>";
    var len = data.length;
    for ( var i = 0; i < len; i++) {
        tableStr = tableStr + "<tr>"
            +"<td>"+ ((page-1)*10+i+1) + "</td>"
            +"<td><input class='check' id='checkOne' name='checkOne' type='checkbox' value='"+data[i].cNo+"' /></td>"
            +"<td>"+ data[i].cNo + "</td>"
            + "<td>"+ data[i].cName + "</td>"
            + "<td>"+ data[i].idCard + "</td>"
            +"<td>"+data[i].sex+"</td>"
            + "<td>"+ data[i].phone + "</td>"
            + "<td>"+ data[i].address + "</td>"
            + "<td>"+ data[i].email + "</td>"
            + "<td><a class='btn btn-inverse'  href='updatecustom.jsp?cNo="+ data[i].cNo + "&address="+ data[i].address + "&cName="+ data[i].cName + "&phone="+data[i].phone+"&email="+data[i].email+"&hobby="+data[i].hobby+"'>Update</a></td>"
            + "<td><a class='btn btn-danger' href='http://localhost:8080/ChatRobot/custom/deletecustom?cNo="+data[i].cNo+"'>Delete</a></td>"
            +"</tr>";
    }
    if(len==0){
        tableStr = tableStr + "<tr style='text-align: center'>"
            +"<td colspan='6'><font color='#cd0a0a'>"+ 暂无记录 + "</font></td>"
            +"</tr>";
    }
    tableStr = tableStr + "</tbody></table>";
    //添加到div中
    $(".content").html(tableStr);



}



function createShowingaccount1(data,fNo){
    var tableStr = "<form action='http://localhost:8080/ChatRobot/Fund/BuyFund'><table id='myTable1' border='0' width='100'>";
    tableStr = tableStr
        + "<thead><tr class='list-header'>"
        // +"<th width='2%'>序号</th>"
        // +"<th width='2%'><input id='checkAll' name='checkAll' type='checkbox' onclick='checkAll()' /></th>"
        // +"<th width='10%'>ID</th>"
        +"<th width='25%'>用户账户</th>"
        +"<th width='25%'>账户余额</th>"
        +"<th width='25%'>状态</th>"
        // +"<th width='10%'>时间</th>"
        +"<th width='17%'>输入金额</th>"
        +"<th width='8%'>购买</th>"
        +"</tr></thead><tbody>";
    var len = data.length;
    for ( var i = 0; i < len; i++) {
        tableStr = tableStr + "<tr>"
            // +"<td>"+ ((page-1)*10+i+1) + "</td>"
            // +"<td><input class='check' id='checkOne' name='checkOne' type='checkbox' value='"+data[i].acNum+"' /></td>"
            // +"<td>"+ data[i].acNum + "</td>"
            +"<td>"+ data[i].cno + "<input class='aiya' type='hidden' name='cno' value='"+data[i].cno+" '><input class='aiya' type='hidden' name='fNo' value='"+ fNo + " '></td>"
            + "<td>"+ data[i].money + "<input class='aiya' type='hidden'id='moneyx'  value='"+data[i].money+" '></td>"
            + "<td>"+ data[i].flag + "</td>"
            // +"<td>"+data[i].createDate+"</td>"
            + "<td><input class='aiya' type='text' id='money' name='money' onkeyup='comparemoney()'></td>"
            + "<td><input class='btn btn-danger' type='submit' id='buy' value='Buy' onclick='' disabled='disabled'/></td>"
            +"</tr>";
    }
    if(len==0){
        tableStr = tableStr + "<tr style='text-align: center'>"
            +"<td colspan='6'><font color='#cd0a0a'>"+ 暂无记录 + "</font></td>"
            +"</tr>";
    }
    tableStr = tableStr + "</tbody></table></form>";
    //添加到div中
    $(".content").html(tableStr);



}




function createShowingaccount(data,page){
    var tableStr = "<table id='myTable' border='0' width='100'>";
    tableStr = tableStr
        + "<thead><tr class='list-header'>"
        +"<th width='2%'>序号</th>"
        +"<th width='2%'><input id='checkAll' name='checkAll' type='checkbox' onclick='checkAll()' /></th>"
        +"<th width='10%'>账号</th>"
        +"<th width='10%'>用户ID</th>"
        +"<th width='10%'>账户余额</th>"
        +"<th width='2%'>状态</th>"
        +"<th width='10%'>创建时间</th>"
        +"<th width='10%'>修改</th>"
        +"<th width='10%'>删除</th>"
        +"</tr></thead><tbody>";
    var len = data.length;
    for ( var i = 0; i < len; i++) {
        tableStr = tableStr + "<tr>"
            +"<td>"+ ((page-1)*10+i+1) + "</td>"
            +"<td><input class='check' id='checkOne' name='checkOne' type='checkbox' value='"+data[i].acNum+"' /></td>"
            +"<td>"+ data[i].acNum + "</td>"
            +"<td>"+ data[i].cno + "</td>"
            + "<td>"+ data[i].money + "</td>"
            + "<td>"+ data[i].flag + "</td>"
            +"<td>"+data[i].sdate+"</td>"
            + "<td><a class='btn btn-inverse'  href='updateaccount.jsp?acNum="+ data[i].acNum + "&cno="+ data[i].cno + "&money="+ data[i].money + "&flag="+data[i].flag+"'>Update</a></td>"
            + "<td><a class='btn btn-danger' href='http://localhost:8080/ChatRobot/account/deleteaccount?acNum="+data[i].acNum+"'>Delete</a></td>"
            +"</tr>";
    }
    if(len==0){
        tableStr = tableStr + "<tr style='text-align: center'>"
            +"<td colspan='6'><font color='#cd0a0a'>"+ 暂无记录 + "</font></td>"
            +"</tr>";
    }
    tableStr = tableStr + "</tbody></table>";
    //添加到div中
    $(".content").html(tableStr);



}



function createShowingLog(data,page){
    var tableStr = "<table id='myTable' border='0' width='100'>";
    tableStr = tableStr
        + "<thead><tr class='list-header'>"
        +"<th width='2%'>序号</th>"
        +"<th width='2%'><input id='checkAll' name='checkAll' type='checkbox' onclick='checkAll()' /></th>"
        +"<th width='7%'>ID</th>"
        +"<th width='6%'>用户ID</th>"
        +"<th width='6%'>对象ID</th>"
        +"<th width='2%'>类型</th>"
        +"<th width='24%'>描述</th>"
        +"<th width='10%'>操作时间</th>"
        +"<th width='5%'>删除</th>"
        +"</tr></thead><tbody>";
    var len = data.length;
    for ( var i = 0; i < len; i++) {
        tableStr = tableStr + "<tr>"
            +"<td>"+ ((page-1)*10+i+1) + "</td>"
            +"<td><input class='check' id='checkOne' name='checkOne' type='checkbox' value='"+data[i].lId+"' /></td>"
            +"<td>"+ data[i].lId + "</td>"
            +"<td>"+ data[i].sId + "</td>"
            +"<td>"+ data[i].tId + "</td>"
            + "<td>"+ data[i].type + "</td>"
            + "<td>"+ data[i].description + "</td>"
            +"<td>"+data[i].sdate+"</td>"
            + "<td><a class='btn btn-danger' href='http://localhost:8080/ChatRobot/Log/deleteLog?acNum="+data[i].lId+"'>Delete</a></td>"
            +"</tr>";
    }
    if(len==0){
        tableStr = tableStr + "<tr style='text-align: center'>"
            +"<td colspan='6'><font color='#cd0a0a'>"+ 暂无记录 + "</font></td>"
            +"</tr>";
    }
    tableStr = tableStr + "</tbody></table>";
    //添加到div中
    $(".content").html(tableStr);



}



function createShowingFund(data,page,flag){
    var tableStr = "<table id='myTable' border='0' width='100'>";
    tableStr = tableStr
        + "<thead><tr class='list-header'>"
        +"<th width='2%'>序号</th>"
        +"<th width='2%'><input id='checkAll' name='checkAll' type='checkbox' onclick='checkAll()' /></th>"
        +"<th width='7%'>基金代码</th>"
        +"<th width='6%'>基金名称</th>"
        +"<th width='2%'>基金类型</th>"
        +"<th width='6%'>价格</th>"
        +"<th width='24%'>公司</th>"
        +"<th width='24%'>描述</th>"
        +"<th width='10%'>成立时间</th>";
    if(flag==1){
        tableStr = tableStr
            // +"<td><a class='btn btn-inverse'  href='http://localhost:8080/ChatRobot/Fund/InterestFund?fNo=" + data[i].fNo + "'>Interest</a></td>"
            // +"<th width='5%'>操作</th>"
            +"<th width='10%'>购买</th>"
            +"</tr></thead><tbody>";
    }
    else {
        tableStr = tableStr
            +"<th width='5%'>更新</th>"
            +"<th width='5%'>删除</th>"
            +"</tr></thead><tbody>";
    }
    var len = data.length;
    for ( var i = 0; i < len; i++) {
        tableStr = tableStr + "<tr>"
            +"<td>"+ ((page-1)*10+i+1) + "</td>"
            +"<td><input class='check' id='checkOne' name='checkOne' type='checkbox' value='"+data[i].fNo+"' /></td>"
            +"<td>"+ data[i].fNo + "</td>"
            +"<td><a class='btn btn-inverse' href='http://localhost:8080/ChatRobot/Fund/FundDetail?fNo=" + data[i].fNo + "'>"+ data[i].fName + "</a></td>"
            +"<td>"+ data[i].type + "</td>"
            + "<td>"+ data[i].price + "</td>"
            + "<td>"+ data[i].company + "</td>"
            + "<td>"+ data[i].description + "</td>"
            +"<td>"+data[i].sdate+"</td>";
                if(flag==1){
                    tableStr = tableStr
                    // +"<td><a class='btn btn-inverse'  href='http://localhost:8080/ChatRobot/Fund/InterestFund?fNo=" + data[i].fNo + "'>Interest</a></td>"
                    + "<td><a class='btn btn-danger' href='http://localhost:8080/ChatRobot/Fund/FundDetail?fNo=" + data[i].fNo + "'>Buy</a></td>"
                    + "</tr>";
                }
                else {
                    tableStr = tableStr
                    +"<td><a class='btn btn-inverse'  href='updateFund.jsp?fNo=" + data[i].fNo + "&fName=" + data[i].fName + "&type=" + data[i].type + "&price=" + data[i].price + "&company=" + data[i].company + "&description=" + data[i].description + "&state=" + data[i].state + "'>Update</a></td>"
                    + "<td><a class='btn btn-danger' href='http://localhost:8080/ChatRobot/Fund/deleteFund?acNum=" + data[i].fNo + "'>Delete</a></td>"
                    + "</tr>";
                }
    }
    if(len==0){
        tableStr = tableStr + "<tr style='text-align: center'>"
            +"<td colspan='6'><font color='#cd0a0a'>"+ 暂无记录 + "</font></td>"
            +"</tr>";
    }
    tableStr = tableStr + "</tbody></table>";
    //添加到div中
    $(".content").html(tableStr);



}


function createShowingFa(data,page,flag){
    var tableStr = "<table id='myTable' border='0' width='100'>";
    tableStr = tableStr
        + "<thead><tr class='list-header'>"
        +"<th width='2%'>序号</th>"
        +"<th width='2%'><input id='checkAll' name='checkAll' type='checkbox' onclick='checkAll()' /></th>"
        +"<th width='7%'>客户ID</th>"
        +"<th width='6%'>资金账号</th>"
        +"<th width='2%'>基金名称</th>"
        +"<th width='6%'>价格</th>"
        +"<th width='12%'>基金总价值</th>"
        +"<th width='12%'>持有份额</th>"
        +"<th width='5%'>待定</th>"
        +"<th width='5%'>赎回</th>"
        +"</tr></thead><tbody>";
    var len = data.length;
    for ( var i = 0; i < len; i++) {
        tableStr = tableStr + "<tr>"
            +"<td>"+ ((page-1)*10+i+1) + "</td>"
            +"<td><input class='check' id='checkOne' name='checkOne' type='checkbox' value='"+data[i].id+"' /></td>"
            +"<td>"+ data[i].cId + "</td>"
            +"<td>"+ data[i].acNum + "</td>"
            +"<td>"+ data[i].fNo+ "</td>"
            + "<td>"+ data[i].fprice + "</td>"
            + "<td>"+ data[i].price + "</td>"
            + "<td>"+ data[i].count + "</td>"
            +"<td><a class='btn btn-inverse'  href='http://localhost:8080/ChatRobot/Fund/InterestFund?fNo=" + data[i].fNo + "'>Interest</a></td>"
            + "<td><a class='btn btn-danger' href='http://localhost:8080/ChatRobot/Fund/FundSell?fNo=" + data[i].id + "'>Sell</a></td>"
            + "</tr>";

    }
    if(len==0){
        tableStr = tableStr + "<tr style='text-align: center'>"
            +"<td colspan='6'><font color='#cd0a0a'>"+ 暂无记录 + "</font></td>"
            +"</tr>";
    }
    tableStr = tableStr + "</tbody></table>";
    //添加到div中
    $(".content").html(tableStr);



}






