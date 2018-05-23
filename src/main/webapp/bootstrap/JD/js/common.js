(function ($) {
    customCondition();
    itemListSearch();
    loanItemInputSearch();
    loanItemBtnSearch();
})(jQuery);

/** ****************投资理财相关***************** */

/**
 * 投资列表自定义查询
 */
function customCondition() {
    var b = $("#customCondition");
    var a = b.find("input.input-s");
    if (a.length < 1) {
        return
    }
    a.keypress(function (d) {
        var c = d.keyCode || d.charCode;
        if (c && (c < 48 || c > 57) && c != 46 && c != 8) {
            d.preventDefault();
        }
    });
    a.blur(function (g) {
        var d = $(this),
            c = $.trim(d.val()),
            f = new RegExp("^[0-9]+(.[0-9]{2})?$", "g");
        if (!f.test(c)) {
            d.val("");
        }
        g.stopPropagation();
    });

    var btns = b.find("a.btn-c2");
    btns.click(function () {

        // var v1 = parseInt(a.eq(0).val());
        // var v2 = parseInt(a.eq(1).val());
        // var v3 = parseInt(a.eq(2).val());
        // var v4 = parseInt(a.eq(3).val());

        var v1 = parseInt(0);
        var v2 = parseInt(0);
        var v3 = parseInt(a.eq(0).val());
        var v4 = parseInt(a.eq(1).val());

        var yield = getYieldParam(v1, v2);
        var mininvest = getMininvestParam(v3, v4);

        if ($("a.btn-c2").index(this) == 0 && yield != "") {
            // customUrlPost(yield , mininvest);
            customUrlPost(yield, mininvest);
        }
        // if($("a.btn-c2").index(this) == 1 && mininvest != ""){
        // customUrlPost(yield , mininvest);
        // }
    });
}


/**
 * 投资理财自定义查询
 */
function customUrlPost(yieldValue, mininvestValue) {
    var paramAttay = getParam();
    var url = getUrl();
    var flag = true;
    for (var i = 0; i < paramAttay.length; i++) {
        if (paramAttay[i].indexOf("yield=") == -1 && paramAttay[i].indexOf("mininvest=") == -1) {
            if (paramAttay[i].indexOf("op=") >= 0) {
                var opStr = parseOp(paramAttay[i]);
                if (opStr.length > 0) {
                    opStr = encodeURIComponent(opStr);
                    if (flag) {
                        url += "?op=" + opStr;
                        flag = false;
                    } else {
                        url += "&op=" + opStr;
                    }
                }
            }
        }
    }
    if (yieldValue != "") {
        // url += (flag ? "yield=" + yieldValue : "&yield=" + yieldValue);
        // flag = false;
    }
    if (mininvestValue != "") {
        if (flag) {
            url += "?mininvest=" + mininvestValue;
            flag = false;
        } else {
            url += "&mininvest=" + mininvestValue;
        }
    }
    var hasShop = $("#hasShop").val();
    if (hasShop == "1") {
        var queryValue = getQueryValue();
        var shopId = $("#shopId").val();
        if (queryValue != "") {
            if (flag) {
                url += "?q=" + queryValue;
                flag = false;
            } else {
                url += "&q=" + queryValue;
            }
        }
        if (shopId != "") {
            if (flag) {
                url += "?s=" + shopId;
            } else {
                url += "&s=" + shopId;
            }
        }
    }
    window.location.href = url;
}

function parseOp(opStr) {
    var decodeParam = decodeURIComponent(opStr);
    var paramSplit = decodeParam.split("=")[1].split(",");
    opStr = "";
    if (paramSplit.length > 0) {
        for (var i = 0; i < paramSplit.length; i++) {
            if (validCategory(paramSplit[i])) {
                if (opStr == "") {
                    opStr = paramSplit[i];
                } else {
                    opStr += ("," + paramSplit[i]);
                }
            }
        }
    }
    return opStr;
}

function validCategory(paramSplit) {
    var category = paramSplit.split(":");
    if (category[0] == "25" || category[0] == "27") {
        return false;
    }
    return true;
}

/**
 * 预期年化收益率参数
 */
function getYieldParam(v1, v2) {
    var perchfix = "-";
    var yield = "";
    if (!isNaN(v1) && !isNaN(v2)) {
        if (v1 > v2) {
            var temp = v1;
            v1 = v2;
            v2 = temp;
        }
        if (v1 < 0 || v1 > 100) {
            v1 = 0;
        }
        if (v2 > 100 || v2 < 0) {
            v2 = 100;
        }
        yield = v1 + perchfix + v2;
        return yield;
    } else if (!isNaN(v1)) {
        if (v1 < 0 || v1 > 100) {
            v1 = 0;
        }
        yield = v1 + perchfix;
        return yield;
    } else if (!isNaN(v2)) {
        if (v2 > 100 || v2 < 0) {
            v2 = 100;
        }
        yield = perchfix + v2;
        return yield;
    }
    return yield;
}

/**
 * 投资金额参数
 */
function getMininvestParam(v3, v4) {
    var perchfix = "-";
    var mininvest = "";
    if (!isNaN(v3) && !isNaN(v4)) {
        if (v3 > v4) {
            var temp = v3;
            v3 = v4;
            v4 = temp;
        }
        mininvest = v3 + perchfix + v4;
        return mininvest;
    } else {
        if (!isNaN(v3)) {
            mininvest = v3 + perchfix;
            return mininvest;
        } else if (!isNaN(v4)) {
            mininvest = perchfix + v4;
            return mininvest;
        }
    }
    return mininvest;
}

function getQueryValue() {
    var s = $(".input-sch").find("input.input");
    if (s.length < 1) {
        return "";
    }
    return encodeURIComponent(s.eq(0).val());
}

/**
 * 投资理财input搜索
 */
function itemFundSearch() {
    var s = $(".input-sch").find("input.input");
    if (s.length < 1) {
        return;
    }
    var key =  encodeURI(encodeURI(s.eq(0).val()));
    if (key != "") {

    }

    var paramAttay = getParam();
    url = getUrl() + "?q=" + key;
    if (paramAttay.length > 0) {
        for (var i = 0; i < paramAttay.length; i++) {
            if (paramAttay[i].indexOf("q=") == -1 && paramAttay[i].indexOf("page=") == -1) {
                url += "&" + paramAttay[i];
            }
        }
    }
    window.location.href = url;
}

function itemListSearch() {
    var s = $(".input-sch").find("input.input");
    if (s.length < 1) {
        return;
    }
    s.keypress(function (d) {
        var c = d.keyCode || d.charCode;
        if (c == 13) {
            itemFundSearch();
        }
    });
}

function setPublic() {
    var paramAttay = getParam();
    var pub = 0;
    var url = getUrl();
    if ($("#publicBox").is(":checked")) {
        pub = 1;
        url += "?pub=" + pub;
    }
    if (paramAttay.length > 0) {
        for (var i = 0; i < paramAttay.length; i++) {
            if (paramAttay[i].indexOf("pub=") == -1) {
                if (pub == 0 && i == 1) {
                    url += "?" + paramAttay[i];
                } else {
                    url += "&" + paramAttay[i];
                }

            }
        }
    }
    window.location.href = url;
}


/** ****************货款相关JS***************** */


/**
 * 货款btn搜索
 */
function loanItemBtnSearch() {
    var b = $(".clearfix").find("a.loan-search");
    b.click(function () {
        loanItemListSearch();
    });
}

/**
 * 货款搜索
 */
function loanItemListSearch() {
    var i = $(".mt").find("input.loan-search");
    var s = $(".loan-con-list").find("select.sel");
    var q = i.eq(0).val();
    var a = s.eq(0).val();
    var b = s.eq(1).val();
    var c = s.eq(2).val();
    var url = getUrl();
    var param = "?amount=" + a + "&timeLimit=" + b + "&identity=" + c;
    if (q != "") {
        param += "&q=" + q;
    }
    window.location.href = url + param;
}


/**
 * 货款input搜索
 */
function loanItemInputSearch() {
    var s = $(".mt").find("input.loan-search");
    if (s.length < 1) {
        return;
    }
    s.keypress(function (d) {
        var c = d.keyCode || d.charCode;
        if (c == 13) {
            loanItemListSearch();
        }
    });
}


/** ****************方案相关JS***************** */

/**
 * 设为方案
 */
function setSolution(itemId, buyDays, buyAmount) {
    var url = "//solution.juejin.jd.com/addSolution";
    var data = "itemId=" + itemId + "&buyDays=" + buyDays + "&buyAmount=" + buyAmount;
    $.ajax({
        type: 'get',
        url: url,
        data: data,
        dataType: 'jsonp',
        success: function (msg) {
            if (msg.success == true) {
                alert("设为方案成功!");
            }
        },
        error: function (msg) {
            alert("设为方案失败!");
        }
    });
}

/**
 * 设置关注
 *
 * @param itemId
 */
function setItemWatchedCount(itemId) {
    var url = "//solution.juejin.jd.com/addWatchedCount";
    var data = "itemIdStr=" + itemId;
    $.ajax({
        type: 'get',
        url: url,
        data: data,
        dataType: 'jsonp',
        success: function (msg) {
            if (msg.success.resultFlag == true) {
                alert("关注方案成功!");
            } else {
                alert(msg.success.resultMessage);
            }
        },
        error: function (msg) {
            alert("网络服务错误.");
        }
    });
}

/** ****************借款清单相关js***************** */

function checkBorrowInfo(itemId) {
    var url = "/borrow/check-" + itemId + ".htm";
    var buyAmount = $("#buyAmount").val();
    var buyDays = $("#buyDays").val();
    var data = "buyAmount=" + buyAmount + "&buyDays=" + buyDays;
    $.ajax({
        type: 'post',
        url: url,
        data: "",
        dataType: 'json',
        success: function (msg) {
            if (msg.success == true) {
                alert("您已经申请了该贷款项目。");
                return;
            } else {
                // alert("已经借款成功。");
                post("/borrow/" + itemId + ".htm", {buyAmount: buyAmount, buyDays: buyDays});
                // window.location.href = "/borrow/" + itemId + ".htm?" + data;
            }
        },
        error: function (msg) {
            $("#loanBorrowAdd").attr("unable", false);
            alert("申请贷款失败.");
        }
    });


}

/**
 * 计算借款结果信息
 */
function borrowInfoResult(rate) {
    var i = $("#buyAmount");
    c = $.trim(i.val());
    f = new RegExp("^[0-9]+(.[0-9]{2})?$", "g");
    if (!f.test(c)) {
        i.val("");
        $("#monthMoney").html(0.00);
        $("#lixiSum").html(0.00);
        $("#benxi").html(0.00);
        return;
    }

    var buyDays = $("#buyDays").val();
    var sumAmout = $("#buyAmount").val();
    var lixiDay = sumAmout * rate;
    var lixiSum = sumAmout * rate * buyDays;
    var lixiMonth = lixiDay * 30;
    var monthMoney = (sumAmout / (buyDays / 30)) + (lixiMonth);
    var benxi = (sumAmout * 1) + (lixiSum);
    $("#monthMoney").html(monthMoney.toFixed(2));
    $("#lixiSum").html(lixiSum.toFixed(2));
    $("#benxi").html(benxi.toFixed(2));
}

function borrowInfoResultForSituation(rate) {
    var buyDays = $("#buyDays").html();
    var sumAmout = $("#buyAmount").html();
    var lixiDay = sumAmout * rate;
    var lixiSum = sumAmout * rate * buyDays;
    var lixiMonth = lixiDay * 30;
    var monthMoney = (sumAmout / (buyDays / 30)) + (lixiMonth);
    var benxi = (sumAmout * 1) + (lixiSum);

    $("#monthMoney").html(monthMoney.toFixed(2));
    $("#lixiSum").html(lixiSum.toFixed(2));
    $("#benxi").html(benxi.toFixed(2));
}

/**
 * 提交借款信息
 *
 * @param itemId
 */
var borrowSubmit = true;
function loanBorrowAdd(itemId) {
    $("#loanBorrowAdd").hide();
    var buyAmount = parseInt($("#buyAmount").val());
    if (isNaN(buyAmount) || buyAmount == 0) {
        return;
    }

    var borrowForm = $("#borrowAddForm");
    var url = "/borrow/add-" + itemId + ".htm";
    borrowForm.attr("action", url);
    if (borrowSubmit) {
        borrowForm.submit();
        borrowSubmit = false;
    }
    $("#loanBorrowAdd").show();
}


function deleteBorrow(borrowId) {
    if (confirm("确定删除此贷款记录吗?")) {
        var url = "/borrow/deleteBorrow-" + borrowId + ".htm";
        $.ajax({
            type: 'post',
            url: url,
            data: "",
            dataType: 'json',
            success: function (msg) {
                if (msg.success == true) {
                    alert("删除贷款记录成功");
                    window.location.reload();
                } else {
                    alert("删除贷款记录失败");
                }
            },
            error: function (msg) {
                alert("删除贷款记录失败");
            }
        });
    }
    ;
}
/**
 * 加购物车
 *
 * @param itemId
 */
function jumpCart(itemId,vendorCode, amount, purchaseAmount) {
    var buyAmount = $("#buyAmount").val();
    if (buyAmount == "" || buyAmount <= 0) {
        $("#errorMessage").html("请输入正确投资金额");
        $("#errorInfo").fadeIn();
        $("#feeTip").hide();
        return;
    }
    if (buyAmount < amount) {
        $("#errorMessage").html("您已低于起投购买额度" + amount + "元");
        $("#errorInfo").fadeIn();
        $("#feeTip").hide();
        return;
    }

    if (!numberValide("buyAmount")) {
        $("#errorMessage").html("投资金额最多两位小数");
        $("#errorInfo").fadeIn();
        $("#feeTip").hide();
        return;
    }
    if (buyAmount > 10000000) {
        $("#errorMessage").html("投资金额不能大于10000000元");
        $("#errorInfo").fadeIn();
        $("#feeTip").hide();
        return;
    }

    if (amount != buyAmount && purchaseAmount != '' && parseFloat(purchaseAmount, 0) > 0) {
        if (buyAmount % parseFloat(purchaseAmount, 0) != 0) {
            $("#errorMessage").html("投资金额为" + parseFloat(purchaseAmount, 0) + "元的整数倍");
            $("#errorInfo").fadeIn();
            $("#feeTip").hide();
            return;
        }
    }

    var url = "/item/" + itemId + "/" + buyAmount + ".htm";
    $.get(url, function (data, status) {
        // data = eval("(" + data + ")");
        if (data.message == "") {
            var url = "//fund.jd.com/sinvoke.do";
            var queryRequest = getQueryRequest();
            if (queryRequest["from"] && queryRequest["from"] != "") {
                post(url, {itemId: itemId,vendorCode: vendorCode, money: buyAmount, period: 0, from: queryRequest["from"]}, "get");
            } else {
                post(url, {itemId: itemId,vendorCode: vendorCode, money: buyAmount, period: 0}, "get");
            }
        } else {
            // if (data.loginUrl) { window.location.href = data.loginUrl; }
            $("#errorMessage").html(data.message);
            $("#errorInfo").fadeIn();
            $("#feeTip").hide();
            return;
        }
    });
}

function jumpCartByBank(itemId, amount, purchaseAmount, vendorCode) {
    var buyAmount = $("#buyAmount").val();
    if (buyAmount == "" || buyAmount <= 0) {
        $("#errorMessage").html("请输入正确投资金额");
        $("#errorInfo").fadeIn();
        return;
    }
    if (buyAmount < amount) {
        $("#errorMessage").html("投资金额不能小于起购金额");
        $("#errorInfo").fadeIn();
        return;
    }

    if (!numberValide("buyAmount")) {
        $("#errorMessage").html("投资金额最多两位小数");
        $("#errorInfo").fadeIn();
        return;
    }
    if (buyAmount > 1000000) {
        $("#errorMessage").html("投资金额不能大于1000000元");
        $("#errorInfo").fadeIn();
        return;
    }

    if (amount != buyAmount && purchaseAmount != '' && parseFloat(purchaseAmount, 0) > 0) {
        if (buyAmount % parseFloat(purchaseAmount, 0) != 0) {
            $("#errorMessage").html("投资金额为" + parseFloat(purchaseAmount, 0) + "元的整数倍");
            $("#errorInfo").fadeIn();
            return;
        }
    }
    var url = "//gate.jr.jd.com/jrinvoke";
    post(url, {itemId: itemId, money: buyAmount, period: 0, key: vendorCode}, "get");

}

function jumpCartByIns(itemId, mininvestAmount) {
    var insuranceNum = $("#insuranceNum").val();
    if (insuranceNum == "" || insuranceNum <= 0 || !integerValidate(insuranceNum)) {
        $("#errorMessageDiv").show();
        $("#errorMessage").html("请输入正确的保险份数");
        $("#errorInfo").fadeIn();
        return;
    }

    if (insuranceNum >= 200) {
        $("#errorMessageDiv").show();
        $("#errorMessage").html("请输入正确的保险份数");
        $("#errorInfo").fadeIn();
        return;
    }

    var url = "//licai.bx.jd.com/ins/insuranceIndex.action";
    var queryRequest = getQueryRequest();
    if (queryRequest["from"] && queryRequest["from"] != "") {
        post(url, {
            skuId: itemId,
            amount: mininvestAmount,
            insuranceNum: insuranceNum,
            totalAmount: insuranceNum * mininvestAmount,
            from: queryRequest["from"]
        }, "post");
    } else {
        post(url, {
            skuId: itemId,
            amount: mininvestAmount,
            insuranceNum: insuranceNum,
            totalAmount: insuranceNum * mininvestAmount
        }, "post");
    }
}

/** ****************通用js***************** */

/**
 * 是否登录。 返回false为未登录。返回true为登录
 */
function validationLogin() {
    var url = "/validation/login.htm";
    var isLogin = false;
    $.ajax({
        url: url,
        async: false, // 同步锁
        cache: false,
        dataType: "json",
        type: "POST",
        success: function (response) {
            isLogin = response.success;
        },
        error: function (response) {
            alert("网络繁忙,请稍后重试!");
        }
    });
    return isLogin;
}

/**
 * 普通ajax访问
 *
 * @param url
 * @param dateType
 * @param data
 * @returns {String}
 */
function jr_ajax(url, dateType, data, method) {
    var result = "";
    $.ajax({
        url: url,
        async: false, // 同步锁
        cache: false,
        dataType: dateType,
        type: method,
        success: function (response) {
            result = response;
        },
        error: function (msg) {
            alert("网络繁忙,请稍后重试!");
        }
    });
    return result;
}

function ajaxSubmit(url, data, date_type, submt_type) {
    var result = "";
    result = $.ajax({
        type: submt_type ? submt_type : 'post',
        url: url,
        data: data,
        dataType: date_type ? date_type : "json",
        async: false,
        success: function (msg) {
            result = msg.responseText;
        },
        error: function (msg) {
            alert("服务异常。");
        }
    });
    return result;
}

/**
 * 得到?号前url
 */
function getUrl() {
    var url = window.location.href;
    url = url.substring(0, url.indexOf(".htm") + 4);
    return url;
}

/**
 * 得到参数数组
 */
function getParam() {
    var url = window.location.href;
    if (url.indexOf("?") == -1) {
        return "";
    } else {
        var paramStr = $.trim(url.substring(url.indexOf("?") + 1, url.length));
        if (paramStr.length > 0) {
            return paramStr.split("&");
        }
        return "";
    }
}
/**
 * 转UTF-8字符
 *
 * @param s1
 * @returns {String}
 */
function EncodeUtf8(s) {
    var s1 = escape(s);
    var sa = s1.split("%");
    var retV = "";
    if (sa[0] != "") {
        retV = sa[0];
    }
    for (var i = 1; i < sa.length; i++) {
        if (sa[i].substring(0, 1) == "u") {
            if (sa[i].length > 5) {
                retV += Hex2Utf8(Str2Hex(sa[i].substring(1, 5)));
                retV += sa[i].substring(5, sa[i].length);
            } else {
                retV += Hex2Utf8(Str2Hex(sa[i].substring(1, 5)));
            }

        } else {
            retV += "%" + sa[i];
        }
    }
    return retV;
}

function Str2Hex(s) {
    var c = "";
    var n;
    var ss = "0123456789ABCDEF";
    var digS = "";
    for (var i = 0; i < s.length; i++) {
        c = s.charAt(i);
        n = ss.indexOf(c);
        digS += Dec2Dig(eval(n));
    }
    // return value;
    return digS;
}

function Dec2Dig(n1) {
    var s = "";
    var n2 = 0;
    for (var i = 0; i < 4; i++) {
        n2 = Math.pow(2, 3 - i);
        if (n1 >= n2) {
            s += '1';
            n1 = n1 - n2;
        } else
            s += '0';
    }
    return s;
}
function Dig2Dec(s) {
    var retV = 0;
    if (s.length == 4) {
        for (var i = 0; i < 4; i++) {
            retV += eval(s.charAt(i)) * Math.pow(2, 3 - i);
        }
        return retV;
    }
    return -1;
}

function Hex2Utf8(s) {
    var retS = "";
    var tempS = "";
    var ss = "";
    if (s.length == 16) {
        tempS = "1110" + s.substring(0, 4);
        tempS += "10" + s.substring(4, 10);
        tempS += "10" + s.substring(10, 16);
        var sss = "0123456789ABCDEF";
        for (var i = 0; i < 3; i++) {
            retS += "%";
            ss = tempS.substring(i * 8, (eval(i) + 1) * 8);
            retS += sss.charAt(Dig2Dec(ss.substring(0, 4)));
            retS += sss.charAt(Dig2Dec(ss.substring(4, 8)));
        }
        return retS;
    }
    return "";
}

/**
 * 产生 n位随机数
 *
 * @returns
 */
function getMathRand(n) {
    if (n < 1) {
        return;
    }
    var randNum = "";
    for (var i = 0; i < n; i++) {
        randNum += Math.floor(Math.random() * 10);
    }
    return randNum;
}

function onKeyResult(keyCode) {
    var keyCodeArray = [8, 37, 39, 46, [47, 58], [95, 106], 110, 190];
    var flag = false;
    if (keyCode) {
        flag = codeValidate(keyCode, keyCodeArray);
    }
    return flag;
}


function codeValidate(keyCode, codeArray) {
    var flag = false;
    for (var i = 0, j = codeArray.length; i < j; i++) {
        if (codeArray[i].length == 2) {
            if (keyCode > codeArray[i][0] && keyCode < codeArray[i][1]) {
                flag = true;
                break;
            }
        } else {
            if (keyCode == codeArray[i]) {
                flag = true;
                break;
            }
        }
    }
    return flag;
}

function numberValide(objDiv) {
    var reg = /^-?\d+\.?\d{0,2}$/;
    var objValue = $("#" + objDiv).val();
    return reg.test(objValue);
}

function integerValidate(objValue) {
    var reg = /^\+?[1-9][0-9]*$/;
    return reg.test(objValue);
}

/**
 * post 提交
 *
 * @param URL
 * @param PARAMS
 * @returns {___temp0} post('pages/statisticsJsp/excel.action', {html
 *          :prnhtml,cm1:'sdsddsd',cm2:'haha'});
 */
function post(URL, PARAMS, METHOD) {
    var temp = document.createElement("form");
    temp.action = URL;
    temp.method = METHOD;
    temp.style.display = "none";
    for (var x in PARAMS) {
        var opt = document.createElement("textarea");
        opt.name = x;
        opt.value = PARAMS[x];
        // alert(opt.name)
        temp.appendChild(opt);
    }
    document.body.appendChild(temp);
    temp.submit();
    return temp;
}

function getQueryRequest() {
    var url = location.search; // 获取url中"?"符后的字串
    var theRequest = new Object();
    if (url.indexOf("?") != -1) {
        var str = url.substr(1);
        strs = str.split("&");
        for (var i = 0; i < strs.length; i++) {
            theRequest[strs[i].split("=")[0]] = (strs[i].split("=")[1]);
        }
    }
    return theRequest;
}

/**
 * 去定投
 *
 * @param itemId
 */
function jumpCast(itemId,vendorCode) {

    //var buyAmount = 0;
    //var url = "//fund.jd.com/cast_sinvoke.do";
    //var queryRequest = getQueryRequest();
    //if (queryRequest["from"] && queryRequest["from"] != "") {
    //    post(url, {itemId: itemId,vendorCode:vendorCode, money: buyAmount, period: 0, from: queryRequest["from"]}, "get");
    //} else {
    //    post(url, {itemId: itemId,vendorCode:vendorCode, money: buyAmount, period: 0}, "get");
    //}
}

/**
 * 加购物车
 *
 * @param itemId
 */
function jumpNewCart(itemId,venderCode, amount, purchaseAmount) {
    var buyAmount = $("#buyAmount").val();
    if (buyAmount == "" || buyAmount <= 0) {
        $("#errorMessage").html("请输入正确投资金额");
        $("#errorInfo").fadeIn();
        $("#feeTip").hide();
        return;
    }
    if (buyAmount < amount) {
        $("#errorMessage").html("您已低于起投购买额度" + amount + "元");
        $("#errorInfo").fadeIn();
        $("#feeTip").hide();
        return;
    }

    if (!numberValide("buyAmount")) {
        $("#errorMessage").html("投资金额最多两位小数");
        $("#errorInfo").fadeIn();
        $("#feeTip").hide();
        return;
    }
    if (buyAmount > 10000000) {
        $("#errorMessage").html("投资金额不能大于10000000元");
        $("#errorInfo").fadeIn();
        $("#feeTip").hide();
        return;
    }

    if (amount != buyAmount && purchaseAmount != '' && parseFloat(purchaseAmount, 0) > 0) {
        if (buyAmount % parseFloat(purchaseAmount, 0) != 0) {
            $("#errorMessage").html("投资金额为" + parseFloat(purchaseAmount, 0) + "元的整数倍");
            $("#errorInfo").fadeIn();
            $("#feeTip").hide();
            return;
        }
    }

    /*var url = "//fund.jd.com/sinvoke.do";
    var queryRequest = getQueryRequest();
    if (queryRequest["from"] && queryRequest["from"] != "") {
        post(url, {itemId: itemId,vendorCode: venderCode, money: buyAmount, period: 0, from: queryRequest["from"]}, "get");
    } else {
        post(url, {itemId: itemId,vendorCode: venderCode, money: buyAmount, period: 0}, "get");
    }*/

    var url = "/item/" + itemId + "/" + buyAmount + ".htm";
    $.get(url, function (data, status) {
        // data = eval("(" + data + ")");
        if (data.message == "") {
            var url = "//fund.jd.com/sinvoke.do";
            var queryRequest = getQueryRequest();
            if (queryRequest["from"] && queryRequest["from"] != "") {
                post(url, {itemId: itemId,vendorCode: venderCode, money: buyAmount, period: 0, from: queryRequest["from"]}, "get");
            } else {
                post(url, {itemId: itemId,vendorCode: venderCode, money: buyAmount, period: 0}, "get");
            }
        } else {
            // if (data.loginUrl) { window.location.href = data.loginUrl; }
            $("#errorMessage").html(data.message);
            $("#errorInfo").fadeIn();
            $("#feeTip").hide();
            return;
        }
    });
}
