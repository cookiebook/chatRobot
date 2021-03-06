﻿﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <base href="http://localhost:8080/ChatRobot/bootstrap/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <%--<meta name="description" content="京东基金理财为您提供关于001647天弘聚利灵活配置混合的基金净值、收益率走势、申购以及赎回费率等信息。更多混合型基金产品信息，请访问页面进行基金产品咨询。"/>--%>
    <%--<meta name="Keywords" content="001647天弘聚利灵活配置混合,基金净值走势,基金收益率,基金赎回,京东金融"/>--%>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
    <link rel="dns-prefetch" href="//static.360buyimg.com" />
    <link rel="dns-prefetch" href="//img30.360buyimg.com" />
    <title>001647天弘聚利灵活配置混合-混合型基金净值|收益率走势-京东金融</title>
    <link rel="icon" href="//www.jd.com/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="JD/css/base.css"/>
    <link rel="stylesheet" href="JD/css/results.css"/>
    <script>
        window.jrBase = {
            navId: 'nav-licai',
            headerFix: false,
            footerFix: true,
            // 是否启用侧边工具栏 包含 返回顶部 和 问卷反馈
            sidebar: true,
            // 问卷反馈url id为业务线配置
            feedbackUrl: '//ur.jr.jd.com/survey/show?id=101',
            jrQaUrl: '//club.jr.jd.com/jijin/jingxuan',
            jimi: '//jimi.jd.com/index.action?source=financingOther'
        };
    </script>
</head>
<body>
    
<!--header-->
<!--header-->
<div class="header">
    <!--topbar-->
    <div class="topbar" id="topbar">
        <div class="grid-1200 topbar-wrap clearfix">
            <div class="topbar-right">
                <ul class="topmenu fl">
                    <li class="topmenu-item topmenu-userinfo">
                        <a target="_blank" href="//www.jd.com/">京东首页</a>
                    </li>
                    <li class="topmenu-item">
                        <span id="loginbar"></span>
                    </li>
                    <li class="topmenu-item">
                        <a href="//trade.jr.jd.com/trade/tradebuy.action" rel="nofollow" clstag="jr|keycount|jr_shouye|jiaoyidan">我的交易单</a>
                    </li>
                    <li id="app-jr" class="topmenu-item dropdown topmenu-dropdown" data-hover="topmenu-dropdown-hover">
                        <i class="drop-arrow"></i>
                        <b class="topmenu-app-ico"></b>
                        <a href="//m.jr.jd.com/integrate/download/html/pc.html" target="_blank" class="topmenu-outline" clstag="jr|keycount|jr_shouye|sjjr">手机金融</a>
                        <div class="dropbox clearfix">
                            <div class="fl">
                                <img src="picture/56714e10n7fa12e5b.png" />
                            </div>
                            <div class="fr">
                                <span class="topmenu-app-tip">下载金融客户端</span>
                                <a class="topmenu-app-iphone" target="_blank" href="https://itunes.apple.com/cn/app/jing-dong-jin-rong/id895682747?mt=8"></a>
                                <a class="topmenu-app-android" target="_blank" href="//m.jr.jd.com/statics/appdown.html"></a>
                            </div>
                        </div>
                    </li>
                    <li id="topbar-help" class="topmenu-item dropdown topmenu-dropdown" data-hover="topmenu-dropdown-hover">
                        <i class="drop-arrow"></i>
                        <span class="topmenu-outline">联系客服</span>
                        <ul class="dropbox">
                            <li><a href="//jrhelp.jd.com/" target="_blank" clstag="jr|keycount|jr_shouye|help">帮助中心</a>
                            </li>
                            <li><a id="J_topbarFeedback" href="//ur.jr.jd.com/survey/show?id=100" target="_blank" rel="nofollow" clstag="jr|keycount|jr_shouye|topbar_feedback">我要吐槽</a>
                            </li>
                            <li><a id="J_topbarKf" href="https://jtalk.jd.com?entrance=10000&source=web&companyId=" target="_blank" clstag="jr|keycount|jr_shouye|topbar_kf">我的客服</a></li>
                        </ul>
                    </li>
                    <li class="topmenu-item dropdown topmenu-dropdown" data-hover="topmenu-dropdown-hover">
                        <i class="drop-arrow"></i>
                        <a href="javascript:;" class="topmenu-sitemap">网站导航</a>
                        <ul class="dropbox">
                            <li><a href="//fund.jd.com" clstag="jr|keycount|jr_shouye|hdjjlc">基金理财</a>
                            </li>
                            <li><a href="//z.jd.com" clstag="jr|keycount|jr_shouye|hdyzc">众筹</a></li>
                            <li><a href="//baitiao.jd.com/" clstag="jr|keycount|jr_shouye|hdbt">京东白条</a></li>
                            <li><a href="//sq.jd.com/X3dvw1" target="_blank" clstag="jr|keycount|jr_shouye|hdwyqb">京东钱包</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div>
    </div>
    <!--topbar end-->
    <!--main-nav-->
    <div class="main-nav">
        <div class="grid-1200 nav-wrap pr clearfix">
            <div class="main-nav-logo fl">
                <a href="//jr.jd.com/index.html" clstag="jr|keycount|jr_shouye|jrlogo">
                    <img src="picture/logo-jr-r.png" width="172" height="38" alt="京东金融" />
                </a>
            </div>
            <div class="nav fl">
                <ul class="nav-box nav-box121 fl clearfix" id="navBox">
                    <!--<li id="nav-index" class="nav-item">
                        <a class="nav-item-primary" href="//jr.jd.com" clstag="jr|keycount|jr_shouye|shouye">首页<i></i></a>
                    </li>-->
                    <li id="nav-licai" class="nav-item nav-col5">
                        <a class="nav-item-primary" href="//licai.jd.com" clstag="jr|keycount|jr_shouye|jr_shouye_licai">理财<i></i><b></b></a>
                        <div class="dropbox sub-box">
                            <dl>
                                <dt>理财精选<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-lcsy" href="//licai.jd.com/" clstag="jr|keycount|jr_shouye|nav_licai_lcsy">理财首页</a></li>
                                        <li><a target="_blank" id="nav-xjk" href="//trade.jr.jd.com/myxjk/jrbincome.action" clstag="jr|keycount|jr_shouye|nav_licai_xjk">京东小金库</a></li>
                                        <li>
                                            <a target="_blank" id="nav-xbjx" href="//xiaobai.jr.jd.com/xiaobai/main.htm" clstag="jr|keycount|jr_shouye|nav_licai_xbjx">
                                                小白理财
                                                <span class="tips-wrap"><img class="popup-tips" src="picture/57b3cb49n93ae08c5.png"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>稳健理财<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-dingqi" href="//dq.jd.com/index_new" clstag="jr|keycount|jr_shouye|nav_licai_dingqi">定期理财</a>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>基金理财<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-jijin" href="//fund.jd.com" clstag="jr|keycount|jr_shouye|nav_licai_jijin">基金超市</a></li>
                                        <li><a target="_blank" id="nav-jjdt" href="//trade.jr.jd.com/jjdt/index.action" clstag="jr|keycount|jr_shouye|nav_licai_jjdt">基金定投</a></li>
                                        <li><a target="_blank" id="nav-jzzh" href="//fundh5.jd.com/pc/blankfd/index.html" clstag="jr|keycount|jr_shouye|nav_licai_jzzh">小白基金</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>特色理财<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-jdtj" href="//gold.jr.jd.com/product/index.htm" clstag="jr|keycount|jr_shouye|nav_licai_jdtj">京东淘金</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <div class="subbox-ad" data-adid="129"></div>
                        </div>
                    </li>
                    <li id="nav-zhongchou" class="nav-item nav-col5">
                        <a class="nav-item-primary" href="//z.jd.com" target="_blank" clstag="jr|keycount|jr_shouye|zc">众筹<i></i><b></b></a>
                        <div class="dropbox sub-box">
                            <dl>
                                <dt>产品众筹<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-zcyx" href="//z.jd.com/sceneIndex.html?from=header" clstag="jr|keycount|jr_shouye|nav_zc_zcyx">众筹优选</a></li>
                                        <li><a target="_blank" id="nav-fqxm" href="//trade-z.jd.com/funding/agreement.action" clstag="jr|keycount|jr_shouye|nav_zc_fqxm">发起项目</a></li>
                                        <li><a target="_blank" id="nav-qzc" href="//q.jd.com/lcf/activity.html" clstag="jr|keycount|jr_shouye|nav_zc_qzc">轻众筹</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>众筹分类<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-zckj" href="//z.jd.com/bigger/search.html?categoryId=10&from=header" clstag="jr|keycount|jr_shouye|nav_zc_kj">科技</a><a target="_blank" id="nav-zcjd" href="//z.jd.com/bigger/search.html?categoryId=18&from=header" clstag="jr|keycount|jr_shouye|nav_zc_jd">家电</a></li>
                                        <li><a target="_blank" id="nav-zcms" href="//z.jd.com/bigger/search.html?categoryId=36&from=header" clstag="jr|keycount|jr_shouye|nav_zc_ms">美食</a><a target="_blank" id="nav-zcmx" href="//z.jd.com/bigger/search.html?categoryId=12&from=header" clstag="jr|keycount|jr_shouye|nav_zc_mx">美学</a></li>
                                        <li><a target="_blank" id="nav-zcwh" href="//z.jd.com/bigger/search.html?categoryId=38&from=header" clstag="jr|keycount|jr_shouye|nav_zc_wh">文化</a><a target="_blank" id="nav-zcgy" href="//z.jd.com/bigger/search.html?categoryId=13&from=header" clstag="jr|keycount|jr_shouye|nav_zc_gy">扶贫</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>东家<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-djjx" href="//dj.jd.com/" clstag="jr|keycount|jr_shouye|nav_dj_djjx">
                                            东家精选
                                            <span class="tips-wrap"><img class="popup-tips" src="picture/57b3cb49n93ae08c5.png"></span>
                                        </a></li>
                                        <li><a target="_blank" id="nav-wytz" href="//dj.jd.com/search.html?projectModel=0" clstag="jr|keycount|jr_shouye|nav_dj_wytz">我要投资</a></li>
                                        <li>
                                            <a target="_blank" id="nav-tzjt" href="//zbbs.jd.com/portal.php?mod=list&catid=1" clstag="jr|keycount|jr_shouye|nav_dj_djsq">东家社区</a>
                                        </li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>互动尝鲜<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-zcsq" href="//zbbs.jd.com/?from=header" clstag="jr|keycount|jr_shouye|nav_zc_zcsq">众筹社区</a></li>
                                        <li><a target="_blank" id="nav-pingce" href="//pingce.jd.com/index.html?from=header" clstag="jr|keycount|jr_shouye|nav_zc_pingce">0元评测</a></li>
                                        <li><a target="_blank" id="nav-jianhuo" href="//zan.jd.com/?from=header" clstag="jr|keycount|jr_shouye|nav_zc_jianhuo">尖er货</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>众创生态<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-jdct" href="//y.jd.com/bsyPlan" clstag="jr|keycount|jr_shouye|nav_licai_jdct">千树资本</a></li>
                                        <li><a target="_blank" id="nav-cyfw" href="//y.jd.com" clstag="jr|keycount|jr_shouye|nav_licai_cyfw">创业服务</a></li>
                                        <li><a target="_blank" id="nav-zcxy" href="//y.jd.com/zcCollege" clstag="jr|keycount|jr_shouye|nav_licai_zcxy">众创学院</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <div class="subbox-ad" data-adid="131"></div>
                        </div>
                    </li>
                    <li id="nav-baoxian" class="nav-item nav-col7">
                        <a class="nav-item-primary" href="//bao.jd.com/" clstag="jr|keycount|jr_shouye|baoxian">保险<i></i><b></b></a>
                        <div class="dropbox sub-box">
                            <dl>
                                <dt>保险精选<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-bxsy" href="//bao.jd.com/" clstag="jr|keycount|jr_shouye|nav_bx_bxsy">保险首页</a></li>
                                        <li><a target="_blank" id="nav-chexian" href="//bao.jd.com/vehicle" clstag="jr|keycount|jr_shouye|nav_bx_chexian">车险首页</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>车险<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" href="//bao.jd.com/vehicle/product/121" clstag="jr|keycount|jr_shouye|nav_bx_rbcx">人保车险</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/vehicle/product/120" clstag="jr|keycount|jr_shouye|nav_bx_ygcx">阳光车险</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/vehicle/product/10001" clstag="jr|keycount|jr_shouye|nav_bx_zhbx">中华车险</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>意外<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" href="//bao.jd.com/goods/3100" clstag="jr|keycount|jr_shouye|nav_bx_ywjt">交通</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/goods/3200" clstag="jr|keycount|jr_shouye|nav_bx_ywzh">综合</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/goods/3300" clstag="jr|keycount|jr_shouye|nav_bx_ywhw">运动</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>旅行<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" href="//bao.jd.com/goods/2100" clstag="jr|keycount|jr_shouye|nav_bx_lxjn">境内</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/goods/2200" clstag="jr|keycount|jr_shouye|nav_bx_lxjw">境外</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/goods/2300" clstag="jr|keycount|jr_shouye|nav_bx_lxsg">申根</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>健康<i class="sub-line"></i><span class="tips-wrap"><img class="popup-tips" src="picture/57b3cb49n93ae08c5.png"></span></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" href="//bao.jd.com/goods/1100" clstag="jr|keycount|jr_shouye|nav_bx_jkyy">重大疾病</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/goods/1200" clstag="jr|keycount|jr_shouye|nav_bx_jkln">医疗费用</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/goods/1300" clstag="jr|keycount|jr_shouye|nav_bx_jkcn">防癌保障</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>财产<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" href="//bao.jd.com/goods/7100" clstag="jr|keycount|jr_shouye|nav_bx_ccjc">家财</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/goods/7200" clstag="jr|keycount|jr_shouye|nav_bx_cczr">责任</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/goods/7300" clstag="jr|keycount|jr_shouye|nav_bx_cccx">创新</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>人寿<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" href="//bao.jd.com/goods/8100" clstag="jr|keycount|jr_shouye|nav_bx_rsylcx">养老储蓄</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/goods/8200" clstag="jr|keycount|jr_shouye|nav_bx_rsjycx">教育储蓄</a></li>
                                        <li><a target="_blank" href="//bao.jd.com/goods/8300" clstag="jr|keycount|jr_shouye|nav_bx_rsdqsx">定期寿险</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <div class="subbox-ad" data-adid="127"></div>
                        </div>
                    </li>
                    <li id="nav-baitiao" class="nav-item nav-col6">
                        <a class="nav-item-primary" href="//baitiao.jd.com/" clstag="jr|keycount|jr_shouye|bt">白条<i></i><b></b></a>
                        <div class="dropbox sub-box">
                            <dl>
                                <dt>购物打白条<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-jdbt" href="//baitiao.jd.com/" clstag="jr|keycount|jr_shouye|nav_bt_jdbt">白条</a></li>
                                        <li><a target="_blank" id="nav-btyh" href="//baitiao.jd.com/coupon/init" clstag="jr|keycount|jr_shouye|nav_bt_btyh">白条优惠</a></li>
                                        <li><a target="_blank" id="nav-bthk" href="//bt.jd.com/v3/activity/open" clstag="jr|keycount|jr_shouye|nav_bt_bthk">白条还款</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>生活打白条<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li>
                                            <a target="_blank" id="nav-buycar" href="//icar.jd.com/" clstag="jr|keycount|jr_shouye|nav_bt_buycar">汽车分期</a>
                                        </li>
                                        <li>
                                            <a target="_blank" id="nav-travel" href="//sfy.jd.com/" clstag="jr|keycount|jr_shouye|nav_bt_travel">旅游</a>
                                            <!--<a target="_blank" id="nav-zufang" href="//sale.jd.com/act/f3QXlFDUNqM.html" clstag="jr|keycount|jr_shouye|nav_bt_zufang">租房</a>-->
                                        </li>
                                        <li><a target="_blank" id="nav-mfzx" href="//fang.jd.com/" clstag="jr|keycount|jr_shouye|nav_bt_mfzx">买房装修</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>信用服务<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-xbxy" href="//credit.jd.com/" clstag="jr|keycount|jr_shouye|nav_bt_xbxy">小白信用</a></li>
                                        <li><a target="_blank" id="nav-btlmk" href="//bk.jd.com/" clstag="jr|keycount|jr_shouye|nav_bt_btlmk">白条联名卡</a></li>
                                        <li><a target="_blank" id="nav-jdgb" href="//coin.jd.com/" clstag="jr|keycount|jr_shouye|nav_bt_jdgb">京东钢镚</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>个人/企业服务<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-jdjt" href="//baitiao.jd.com/bul/home" clstag="jr|keycount|jr_shouye|nav_bt_jdjt">金条</a></li>
                                        <li><a target="_blank" id="nav-dzyd" href="//dang.jd.com/" clstag="jr|keycount|jr_shouye|nav_bt_dzyd">抵质押贷</a></li>
                                        <li><a target="_blank" id="nav-jdjq" href="//sale.jd.com/act/Ux4tQSurfCHOqD.html" clstag="jr|keycount|jr_shouye|nav_bt_jdjq">借钱</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>校园金融<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-xyzq" href="//edu.jd.com/" clstag="jr|keycount|jr_shouye|nav_bt_xyzq">校园特权</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>农村金融<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-xcbt" href="//nj.jd.com/indexForXcbt" clstag="jr|keycount|jr_shouye|nav_bt_xcbt">乡村白条</a></li>
                                        <li><a target="_blank" id="nav-jnd" href="//nj.jd.com/" clstag="jr|keycount|jr_shouye|nav_bt_jnd">京农贷</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <div class="subbox-ad" data-adid="126"></div>
                        </div>
                    </li>
                    <li id="nav-stock" class="nav-item nav-col5">
                        <a class="nav-item-primary" href="//gupiao.jd.com/" clstag="jr|keycount|jr_shouye|gupiao">股票<i></i><b></b></a>
                        <div class="dropbox sub-box">
                            <dl>
                                <dt>炒股工具<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-appdownload" href="//gupiao.jd.com/download/" clstag="jr|keycount|jr_shouye|nav_stock_appdownload">APP下载<span class="tips-wrap"><img class="popup-tips" src="picture/57b3cb49n93ae08c5.png"></span></a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>特色功能<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-sszx" href="//gupiao.jd.com/" clstag="jr|keycount|jr_shouye|nav_stock_sszx">实时资讯</a></li>
                                        <li><a target="_blank" id="nav-fxnr" href="//gupiao.jd.com/find/" clstag="jr|keycount|jr_shouye|nav_stock_fxnr">发现牛人</a></li>
                                        <li><a target="_blank" id="nav-mgjy" href="//gupiao.jd.com/usTrade" clstag="jr|keycount|jr_shouye|nav_stock_mgjy">美股交易</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>量化交易<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-lhpt" href="//quant.jd.com" clstag="jr|keycount|jr_shouye|nav_stock_sszx">量化平台</a></li>
                                        <li><a target="_blank" id="nav-cljs" href="//quant.jd.com/contest/index" clstag="jr|keycount|jr_shouye|nav_stock_fxnr">策略榜</a></li>
                                        <li><a target="_blank" id="nav-lhsq" href="//club.jr.jd.com/quant/index" clstag="jr|keycount|jr_shouye|nav_stock_mgjy">量化社区</a></li>
                                        <li><a target="_blank" id="nav-lhjs" href="//quant.jd.com/huaxin/index" clstag="jr|keycount|jr_shouye|nav_stock_lhjs">量化竞赛</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <div class="fl nav-app-qrcode"></div>
                            <div class="subbox-ad" data-adid="128"></div>
                        </div>
                    </li>
                    <li id="nav-dongjiacaifu" class="nav-item nav-col4">
                        <a class="nav-item-primary" href="//rich.jd.com/" clstag="jr|keycount|jr_shouye|dongjiacaifu">东家财富<i></i><b></b></a>
                        <div class="dropbox sub-box">
                            <dl>
                                <dt>东家财富<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" href="//rich.jd.com/product/product-list?productType=fixed">类固收</a></li>
                                        <li><a target="_blank" href="//rich.jd.com/product/product-list?productType=stock">私募股权</a></li>
                                        <li><a target="_blank" href="//rich.jd.com/product/product-list?productType=sun&pageSize=10&pageIndex=0">阳光私募</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>东家海外<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" href="//hw.jd.com/product/list?productType=hwym">海外移民</a></li>
                                        <li><a target="_blank" href="//hw.jd.com/product/list?productType=hwlx">海外留学</a></li>
                                        <li><a target="_blank" href="//hw.jd.com/product/list?productType=hwzy">海外置业</a></li>
                                        <li><a target="_blank" href="//hw.jd.com/product/list?productType=hwqz">海外求职</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <div style="float: right; margin: 10px 370px 0 0;"><a target="_blank" href="//hw.jd.com/"><img src="picture/5992bcf2nf4067ff9.jpg"></a></div>
                            <div style="position: absolute; right: 0; margin: 10px 30px 0 0;"><img src="picture/599bb4bbn2eac8e56.jpg"></div>
                        </div>
                    </li>
                    <li class="nav-item nav-cutline"><span class="line"></span></li>
                    <li id="nav-loan" class="nav-item nav-col5">
                        <a class="nav-item-primary" href="//loan.jd.com/home/index.htm" clstag="jr|keycount|jr_shouye|jingdongdai">企业金融<i></i><b></b></a>
                        <div class="dropbox sub-box">
                            <dl>
                                <dt>企业中心<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-qyjrjx" href="//loan.jd.com/home/index.htm" clstag="jr|keycount|jr_shouye|nav_bx_qyjrjx">企业金融介绍</a></li>
                                        <li><a target="_blank" id="nav-qyfwpt" href="//ft.jd.com" clstag="jr|keycount|jr_shouye|nav_bx_qyfwpt">企业金融服务</a></li>
                                        <li><a target="_blank" id="nav-cjwt" href="//jrhelp.jd.com/show/getTrdTabList?id=650" clstag="jr|keycount|jr_shouye|nav_qyjr_cjwt">常见问题</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>企业融资<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li>
                                            <a target="_blank" id="nav-jbb" href="//loan.jd.com/scf/" clstag="jr|keycount|jr_shouye|nav_qyjr_jbb">京保贝</a>
                                            <a target="_blank" id="nav-jxd" href="//loan.jd.com/home.htm" clstag="jr|keycount|jr_shouye|nav_qyjr_jxd">京小贷</a>
                                        </li>
                                        <li>
                                            <a style="margin-right:8px;" target="_blank" id="nav-dcrz" href="//dcrz.jd.com/guide.htm" clstag="jr|keycount|jr_shouye|nav_qyjr_dcrz">动产融资</a>
                                            <a style="margin-right:0;" target="_blank" id="nav-qyjc" href="//jc.jd.com" clstag="jr|keycount|jr_shouye|nav_qyjr_jdjc">企业金采</a>
                                        </li>
                                        <li>
                                            <a style="margin-right:8px" target="_blank" href="//loan.jd.com/ky/" clstag="jr|keycount|jr_shouye|nav_qyjr_jdky">京东快银</a>
                                        </li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>企业理财<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-qyjk" href="//8.jd.com" clstag="jr|keycount|jr_shouye|nav_qyjr_qyjk">企业金库</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>企业征信<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-ljzx" href="//icredit.jd.com" clstag="jr|keycount|jr_shouye|nav_qyjr_ljzx">蓝鲸征信</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>企业租赁<i class="sub-line"></i></dt>
                                <dd>
                                    <ul>
                                        <li><a target="_blank" id="nav-cjwt" href="//eshare.jd.com" clstag="jr|keycount|jr_shouye|nav_qyjr_jdex">京东e享</a></li>
                                    </ul>
                                </dd>
                            </dl>
                            <div class="subbox-ad" data-adid="130"></div>
                        </div>
                    </li>
                    <li id="nav-jdfcloud" class="nav-item">
                        <a class="nav-item-primary" target="_blank" href="//c.jd.com" clstag="jr|keycount|jr_shouye|jdfcloud">金融云<i></i><b class="nav-item-tips-year" style="background: url(images/58455bd6nff80ce06.gif) no-repeat; width: 30px; right: -6px; z-index: 100; top: -8px;"></b></a>
                     </li>
                     <li id="nav-icity" class="nav-item">
                        <a class="nav-item-primary" target="_blank" href="http://icity.jd.com" clstag="jr|keycount|jr_shouye|icity">城市计算<i></i>
                            <!--<b class="nav-item-tips-year" style="background: url(images/58455bd6nff80ce06.gif) no-repeat; width: 30px; right: -6px; z-index: 100; top: -8px;"></b>-->
                        </a>
                    </li>
                </ul>
            </div>
            <div class="main-nav-search">
                <div class="search-wrap">
                    <input type="text" class="search-ipt" id="J_searchIpt" title="请输入搜索内容" autocomplete="off" />
                    <a class="search-btn" id="searchBtn" clstag="jr|keycount|jr_search|search_button" href="javascript:;" ></a>
                    <div class="search-result" id="J_searchRecommend"></div>
                    <div class="search-result" id="J_searchKeyWords"></div>
                </div>
            </div>
            <div class="main-nav-userCenter-wrap fr">
                <div id="J_userCenter" class="userCenter-main">
                    <div class="userCenter-portal">
                        <i class="userCenter-portal-icon"></i>
                        <a href="//trade.jr.jd.com/centre/browse.action" class="userCenter-portal-text">我的资产</a>
                        <i class="userCenter-portal-right"></i>
                    </div>
                    <div id="J_userCenterBoard" class="userCenter-board"></div>
                    <i class="userCenter-mask"></i>
                </div>
            </div>
        </div>
    </div>
    <!--main-nav end-->

    <!--sub-nav 如果页面项目需要二级导航 才需添加 否则此段落请删除-->
    <div class="sub-nav">
        <div class="grid-1200 sub-nav-wrap">
            <a id="nav-licaiIndex" class="sub-nav-item" href="//licai.jd.com">理财</a>
            <a id="nav-xiaojinku" class="sub-nav-item" href="//xjk.jr.jd.com/">京东小金库</a>
            <a id="nav-fund" class="sub-nav-item" href="//fund.jd.com">基金理财</a>
            <a id="nav-insurance" class="sub-nav-item" href="//dq.jd.com">定期理财</a>
        </div>
    </div>
    <!--sub-nav-end-->

</div>
<script type="text/javascript">
    (function(){if(typeof jrBase!=='undefined'){if(typeof jrBase.navId!=='undefined'){var mainNav=document.getElementById(jrBase.navId);if(mainNav){mainNav.className+=' current'}}if(typeof jrBase.navSubId!=='undefined'){var subNav=document.getElementById(jrBase.navSubId);if(subNav){subNav.className+=' current'}}}})();
</script>
<!--header end-->
<!--header end--><!--header end-->
<!--container-->
<div class="blackZone">
    <div class="whiteZone">
        <div class="tou-box"></div>
        <div class="whiteZone-left">
            <div class="red-s-box">
                <div class="center-box">
                    <p class="red-b-txt">基金理财</p>
                    <p class="red-s-txt">
                        <span class="jian-tiao"></span>
                        <span class="xian-zi">中</span>
                        <span class="jian-ti"></span>
                    </p>
                </div>
            </div>
            <div class="title-three cf">
                <ul class="title-lie fl cf" id="chartTab">
                                            <li type="3" class="on" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_ssgz">实时估值</li>
                                                                                    <li type="positions" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_zccg">重仓持股</li>
                                                                <li type="rate"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_lhpj">量化评级</li>
                                    </ul>
            </div>
            <div class="product-three">
                <!--非货币、理财型基金显示实时估值-->
    <!--估值图表容器 开始-->
    <!--估值图表容器 开始-->
                                        <div class="products show">
                                <div class="fund-chart-tips">
                                    <ul class="fund-chart-item">
                                        <li>实时估值：<span class="red-color">--元</span></li>
                                        <li>估值涨幅：<span class="red-color">--%</span></li>
                                        <li>[-- --]</li>
                                    </ul>
                                </div>
                                <div class="fund-chart-con">
                                </div>
                            </div>
                                
                <!--净值图表容器 结束-->
                                    <div class="products">
                        <div class="positions">
                            <div class="pos-thead">
                                <table width="100%">
                                    <colgroup>
                                        <col width="10%"/>
                                        <col width="20%"/>
                                        <col width="20%"/>
                                        <col width="20%"/>
                                        <col width="20%"/>
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th align="center">序号</th>
                                        <th align="center">股票简称</th>
                                        <th align="center">日涨幅</th>
                                        <th align="center">占净资产比</th>
                                        <th align="right">持股量(万股)</th>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="pos-list">
                                <table width="100%">
                                    <colgroup>
                                        <col width="10%"/>
                                        <col width="20%"/>
                                        <col width="20%"/>
                                        <col width="20%"/>
                                        <col width="20%"/>
                                    </colgroup>
                                    <tbody id="posTable"></tbody>
                                </table>
                            </div>
                            <div class="data-date">数据截止日期：--</div>
                        </div>
                    </div>
                                <div class="products">
                    <div class="whatBox">
                        <a href="javascript:" class="whatHref">什么是量化评级？</a>
                        <div class="textBox">
                            <div class="jianShang"></div>
                            量化评级是根据基金风险和收益几大指标综合评估基金的整体表现；<br/>
                            <b>综合得分：</b>反应标的各维度综合表现，得分越高，排名越靠前；<br/>
                            <b>增值能力：</b>盈利能力越强，增值能力分值越高；<br/>
                            <b>盈利指数：</b>随机入场持有固定时间，盈利指数越高，分值越高；<br/>
                            <b>跑赢大盘：</b>跑赢大盘分值越高表示相对于参考指数表现越好；<br/>
                            <b>抗风险：</b>股市下跌，净值下跌幅度越小，分值越高；<br/>
                            <b>性价比：</b>同等风险下，收益越高，性价比分值越高；
                        </div>
                    </div>
                    <div id="rateWrap"></div>
                </div>
            </div>
            <div class="focus-wrap">
                <div class="j_fundFocus"></div>
            </div>
        </div>

        <div class="whiteZone-right">
            <div>
                <div class="f-l f-s-22 f-bold f-c-32" title="天弘聚利灵活配置混合">
                                            天弘聚利灵活配置混合
                                    </div>
                <div class="f-r store-link">
                    <a href="/fundlist/1-11-112_100002364594_京东-肯特瑞基金销售公司.htm" class="tigonFang" target="_blank">京东-肯特瑞基金销售公司</a>
                    <span class="tigonText">提供</span>
                </div>
            </div>
            <div class="clearfix"></div>
            <p class="change-h"></p>
            <p class="m-t-10">
                                                            <span class="style-qian">  新平衡</span>
                               <td> </td>
                                                <span class="style-qian">  大盘价值型</span>
                               <td> </td>
                                                <span class="style-qian">  阿里巴巴概念</span>
                               <td> </td>
                        </p>

            <div class="more-xinxi">
                <div class="f-l">
                                    <div class="f-c-5e l-h-18">单位净值[ 01-11  ]</div>
                    <div class="f-c-f5 f-f-a">
                        <div class="f-l f-s-36">1.3722 </div>
                        <div class="f-l spacial-mar">
                            <span class="dis-block  f-c-green "> -0.53%  </span>
                            <span class="dis-block  f-c-green ">-0.0073 </span>
                        </div>
                    </div>
                                    <div class="clearfix"></div>
                    <div class="f-c-a5 l-h-18">001647 混合型</div>
                </div>
                <div class="shu-line f-l"></div>
                <div class="f-l m-r-30">
                    <div class="l-h-22">投资风险：
                                                    中
                                            </div>
                    <div class="l-h-24">近3个月：
                                                    <span  class="f-c-red">29.51%</span>
                                        </div>
                    <div class="l-h-24">成立日期：
                                                    2016-12-16
                         </div>
                </div>
                <div class="f-l ">
                    <div class="l-h-22">赎回时长：
                                                    3
                                                个工作日</div>

                    <div class="l-h-24">近1年：
                                                    <span  class="f-c-red">36.54%</span>
                                            </div>
                    <div class="l-h-24">最新规模：
                                                    0.3亿元
                                            </div>
                </div>
            </div>
            <div class="fenjie-line m-t-20 m-b-20"></div>
            <p class="f-bold">投资金额：</p>
            <div class="m-t-10" style="position: relative">
                <div class="input-wrap">
                    <input id="buyAmount" name="buyAmount" class="aiya" type="text" onfocus="checkAmount('001647')" value="10.00" place="10.00元起购">
                    <span class="shuru-yuan">元</span>
                </div>
                                                                                        <a class="nowBuy btn-disable" href="javascript:;">暂停购买</a>
                        
                                                </div>
            <div class="clearfix"></div>
            <p class="m-t-15" id="errorInfo" style="display: none">
                <img src="picture/gantan.png" alt="" class="m-t-3"/>
                <span class="f-c-red" id="errorMessage"></span>
            </p>
            <p class="m-t-15" id="feeTip">
                                    <span>费率</span>
                                                                                            <del>1.0%</del>
                                                                                        <span class="f-c-f5">0.10%</span>
                                                                <span>，申购成功即扣除</span>
                                                </p>
        </div>
    </div>
</div>
<div class="clearfix"></div>

<div class="grayZone">
    <div class="grayBody">
        <div class="bodyLeft">
            <div class="title-spa cf">
                <ul class="title-list fl cf ">
                    <li data-tab="performance?fundCode=001647&vendorCode=S0870000&fundType=203&itemId=107100" class="on" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_jjyj">基金业绩</li>
                    <li data-tab="profile?fundCode=001647&vendorCode=S0870000&itemId=107100" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_jjda">基金档案</li>
                    <li data-tab="investComb?fundCode=001647" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_tzzh">投资组合</li>
                    <li data-tab="notices?fundCode=001647" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_jjgs">基金公告</li>
                    <li data-tab="articles?fundCode=001647" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_xgzx">相关资讯</li>
                    <li style="display: none" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_cpzx">产品咨询<span></span></li>
                    <p></p>
                </ul>
            </div>
            <div class="product-wrap">
                <!--基金业绩板块始-->
                <div class="product show"></div>
                <!--基金业绩板块止-->
                <!--基金档案始-->
                <div class="product"></div>
                <!--基金档案止-->
                <div class="product"></div>
                <div class="product"></div>
                <div class="product"></div>
                <div class="product fund-details-con" id="itemIssue"></div>
            </div>
        </div>
        <div class="bodyRight">
            <div class="bodyRight-one">
                <p class="hot-title">热销基金榜</p>
                <ul class="bang-xinxi">
                    
                        <li >
                            <div class="f-l">
                                <a href="/detail/106730.htm" class="shenlue" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_rmjj_106730">
                                    <span>                                                                                    国泰聚信价值优势灵活配置混合A
                                                                            </span>
                                    <span class="dis-block f-c-a5 f-s-12">000362</span>
                                </a>
                            </div>
                            <div class="f-r">
                                <a href="/detail/106730.htm"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_rmjj_106730"></a>
                                                                    <span class="dis-block f-s-18 f-f-a f-c-f5">
                                                                            10.26%
                                    </span>
                                                                <span class="dis-block f-c-a5 f-s-12 text-r">近一年收益</span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                    
                        <li >
                            <div class="f-l">
                                <a href="/detail/106707.htm" class="shenlue" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_rmjj_106707">
                                    <span>                                                                                    国泰聚信价值优势灵活配置混合C
                                                                            </span>
                                    <span class="dis-block f-c-a5 f-s-12">000363</span>
                                </a>
                            </div>
                            <div class="f-r">
                                <a href="/detail/106707.htm"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_rmjj_106707"></a>
                                                                    <span class="dis-block f-s-18 f-f-a f-c-f5">
                                                                            9.60%
                                    </span>
                                                                <span class="dis-block f-c-a5 f-s-12 text-r">近一年收益</span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                    
                        <li >
                            <div class="f-l">
                                <a href="/detail/106758.htm" class="shenlue" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_rmjj_106758">
                                    <span>                                                                                    国泰估值优势混合(LOF)
                                                                            </span>
                                    <span class="dis-block f-c-a5 f-s-12">160212</span>
                                </a>
                            </div>
                            <div class="f-r">
                                <a href="/detail/106758.htm"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_rmjj_106758"></a>
                                                                    <span class="dis-block f-s-18 f-f-a f-c-green">
                                                                                    -3.01%
                                        </span>
                                                                <span class="dis-block f-c-a5 f-s-12 text-r">近一年收益</span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                    
                        <li >
                            <div class="f-l">
                                <a href="/detail/104673.htm" class="shenlue" clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_rmjj_104673">
                                    <span>                                                                                    创金沪港深精选混合
                                                                            </span>
                                    <span class="dis-block f-c-a5 f-s-12">001662</span>
                                </a>
                            </div>
                            <div class="f-r">
                                <a href="/detail/104673.htm"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_rmjj_104673"></a>
                                                                    <span class="dis-block f-s-18 f-f-a f-c-green">
                                                                                    -4.01%
                                        </span>
                                                                <span class="dis-block f-c-a5 f-s-12 text-r">近一年收益</span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                                    </ul>
            </div>
            <div class="bodyRight-one m-t-10">
                <p class="hot-title">同类基金排行</p>
                <ul class="bang-xinxi">
                                            <li>
                            <div class="f-l" title="金鹰元禧混合型证券投资基金">
                                <a href="/detail/104947.htm" class="shenlue"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_tlph_104947">
                                <span>                                                                                        金鹰元禧混合C
                                                                                                            </span>
                                <span class="dis-block f-c-a5 f-s-12">002425</span>
                                </a>
                            </div>
                            <div class="f-r">
                                <a href="/detail/104947.htm"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_tlph_104947">
                                                                    <span class="dis-block f-s-18 f-f-a f-c-f5">
                                                                                    61.71%
                                        </span>
                                                                <span class="dis-block f-c-a5 f-s-12 text-r">近一年收益</span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                                            <li>
                            <div class="f-l" title="交银施罗德新生活力灵活配置混合型证券投资基金">
                                <a href="/detail/105921.htm" class="shenlue"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_tlph_105921">
                                <span>                                                                                        交银施罗德新生活力
                                                                                                            </span>
                                <span class="dis-block f-c-a5 f-s-12">519772</span>
                                </a>
                            </div>
                            <div class="f-r">
                                <a href="/detail/105921.htm"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_tlph_105921">
                                                                    <span class="dis-block f-s-18 f-f-a f-c-f5">
                                                                                    58.91%
                                        </span>
                                                                <span class="dis-block f-c-a5 f-s-12 text-r">近一年收益</span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                                            <li>
                            <div class="f-l" title="中欧医疗健康混合型证券投资基金C">
                                <a href="/detail/106574.htm" class="shenlue"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_tlph_106574">
                                <span>                                                                                        中欧医疗健康混合C
                                                                                                            </span>
                                <span class="dis-block f-c-a5 f-s-12">003096</span>
                                </a>
                            </div>
                            <div class="f-r">
                                <a href="/detail/106574.htm"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_tlph_106574">
                                                                    <span class="dis-block f-s-18 f-f-a f-c-f5">
                                                                                    48.97%
                                        </span>
                                                                <span class="dis-block f-c-a5 f-s-12 text-r">近一年收益</span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                                            <li>
                            <div class="f-l" title="中欧医疗健康混合型证券投资基金A">
                                <a href="/detail/106573.htm" class="shenlue"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_tlph_106573">
                                <span>                                                                                        中欧医疗健康混合A
                                                                                                            </span>
                                <span class="dis-block f-c-a5 f-s-12">003095</span>
                                </a>
                            </div>
                            <div class="f-r">
                                <a href="/detail/106573.htm"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_tlph_106573">
                                                                    <span class="dis-block f-s-18 f-f-a f-c-f5">
                                                                                    48.69%
                                        </span>
                                                                <span class="dis-block f-c-a5 f-s-12 text-r">近一年收益</span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                                            <li>
                            <div class="f-l" title="易方达改革红利混合型证券投资基金">
                                <a href="/detail/106650.htm" class="shenlue"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_tlph_106650">
                                <span>                                                                                        易方达改革红利混合
                                                                                                            </span>
                                <span class="dis-block f-c-a5 f-s-12">001076</span>
                                </a>
                            </div>
                            <div class="f-r">
                                <a href="/detail/106650.htm"  clstag="jr|keycount|jr_jjxqy2|jr_jjxqy2_tlph_106650">
                                                                    <span class="dis-block f-s-18 f-f-a f-c-f5">
                                                                                    46.31%
                                        </span>
                                                                <span class="dis-block f-c-a5 f-s-12 text-r">近一年收益</span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                                    </ul>
            </div>
                                    <a href="//fund.jd.com/smart/index.htm" class="dis-block m-t-10" clgtag="jr|keycount|jr_jjxqy2|jr_jjxqy2_gg_46992">
                        <img src="picture/1483954192401jjjjjjjjjjjjjjjjjjjjjjjjjjjjj.jpg" width="310px" height="125px" alt="" class=""/>
                    </a>
                                    <a href="//fundh5.jd.com/pc/blankfd/index.html" class="dis-block m-t-10" clgtag="jr|keycount|jr_jjxqy2|jr_jjxqy2_gg_46993">
                        <img src="picture/1510218322414未标题-1.jpg" width="310px" height="125px" alt="" class=""/>
                    </a>
                            </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="clearfix"></div>
<!--container end-->
<!--弹层-->
<!--应用时请去掉style中的属性，js方法在下-->
<div class="panelbox" style="display: none; top: 50%; left: 50%; margin-left: -245px;">
    <div class="panelbg"></div>
    <div class="panelwrap">
        <div class="paneltitle">
            <span class="text">提示</span>
            <span class="panelclose"></span>
        </div>
        <div class="panelcon">
            <div class="panel-text-area">
                <span class="text-tips">
                    您尚未开通基金账户，请开通后购买
                </span>
            </div>
            <div class="panel-btn">
                <a href="javascript:goXjkOpen(107100);" class="sign-out">立即开通</a>
            </div>
            <!--<div style="height:300px; width:450px; padding: 40px; text-align: center">这里是弹层内容</div>-->
        </div>
    </div>
</div>
<script src="js/72ffa24c6d48474393ded6376596c6be.js"></script>
<script src="js/highstock.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script src="js/jquery.mcustomscrollbar.concat.min.js"></script>
<script src="js/wdatepicker.js"></script>
<script src="js/highcharts-more.js"></script>

<script src="js/jquery.qrcode.min.js"></script>

<script src="js/fundvalue.js"></script>
<script src="js/itemtab.js"></script>


<script>
    var FUND_SKU = "001647";
    var FUND_CODE = '001647';
    var ITEM_ID = '107100';
        var NAV_DATE = '2018-01-11';
        console.log("结果为："+"http://fundh5.jd.com/mobile/fundcast/?itemId="+ITEM_ID)
    window.ITEM_ISSUE_INFO = {systemId:107100, key: '10000', productName: '天弘聚利灵活配置混合型证券投资基金'}
    $(".qr-code").empty();
    if(navigator.appName.indexOf("Microsoft") != -1){
        console.log("该浏览器为 ：ie")
        //IE
//        if(navigator.appVersion.match(/8./i)=="8."){
//            console.log("该浏览器为 ：8")
            //ie8
            $('.qr-code').qrcode({
                width: '110',
                height:'110',
                render	: "table",
                text	: "https://fundh5.jd.com/mobile/fundcast?itemId="+ITEM_ID
            });
//        }
//        else if( navigator.appVersion.match(/7./i)=="7."){
//            console.log("该浏览器为 ：7")
//            //ie7
//            $('.qr-code').qrcode({
//                width: '110',
//                height:'110',
//                render	: "table",
//                text	: "https://fundh5.jd.com/mobile/fundcast?itemId="+ITEM_ID
//            });
//        }
//        else{
//            console.log("该浏览器为 ：其他ie版本")
//            //other ie
//        }
    }else{
        console.log("该浏览器为 ：其他的")
        $('.qr-code').qrcode({
            width: '110',
            height:'110',
//        render	: "table",
//        correctLevel:0,
            typeNumber  : -1,
            text	: "https://fundh5.jd.com/mobile/fundcast?itemId="+ITEM_ID
        });
    }

</script>
<script src="js/fundvalue.js"></script>
<script src="js/itemtab.js"></script>
<script type="text/javascript">
  var _jraq = _jraq || [];
  _jraq.push(['account','UA-J2011-12']);
    (function() {
      var ja = document.createElement('script'); ja.type = 'text/javascript'; ja.async = true;
        ja.src = ('https:' == document.location.protocol ? 'https://jrclick' : 'http://jrclick') + '.jd.com/wl.dev.js';
      var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(ja,s);
  })();
</script>
<script type="text/javascript">
    var jaq = jaq || [];
    jaq.push(['account','UA-J2011-12']);
    jaq.push(['domain','jr.jd.com']);
    (function() {
        var ja = document.createElement('script'); ja.type = 'text/javascript'; ja.async = true;
        ja.src = ('https:' == document.location.protocol ? 'https://cscssl' : '//csc') + '.jd.com/joya.js';
        var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(ja,s);
    })();
</script>
</body>

<script>

    
    function reloadHistoryEarnings() {
        var buyAmount = $("#simulateAmount").val();
        if (buyAmount == "" || buyAmount <= 0 || buyAmount > 1000000) {
            alert("请输入正确的申购金额。");
            return;
        }
        if (!numberValide("simulateAmount")) {
            alert("请输入正确的申购金额，最多两位小数。");
            return;
        }
        var buyDays = "w8";
        $("#historyIncome").html("模拟收益");
        initForecastParam("placeholder", "107100", buyAmount, "m8", "true")
    }

    //显示没有开通小金库弹层
    $('#fixedInvest').click(function () {
        $.ajax({
            type: 'post',
            url: '/detail/hasXjk.do',
            //data:data,
            dataType: 'json',
            success: function (msg) {
                if (!msg) {
                    seajs.use('financial/common/module/popup/1.0.0/js/popup', function (pop) {
                        pop.showLayer($('.panelbox'))
                    })
                }else{
                    jumpCast(107100,'S0870000');
                }
            }
        });
    })

function hasXjk() {
    $.ajax({
        type: 'post',
        url: '/detail/hasXjk.do',
        //data:data,
        dataType: 'json',
        success: function (msg) {
            if (!msg) {
                seajs.use('financial/common/module/popup/1.0.0/js/popup', function (pop) {
                    pop.showLayer($('.panelbox'))
                })
            } else {
                jumpCast(107100, 'S0870000');
            }
        }
    });
}
    //点击确定跳转到小金库开户页面
    function goXjkOpen(itemId) {
        window.location.href = "//xjk.jr.jd.com/account/open.action?location_backUrl=//fund.jd.com/detail/"+itemId+".htm";
    }
</script>

<script type="text/javascript">

    seajs.use('common/unit/xPromotion/1.0.0/xPromotion.js', function (xPromotion) {
        // 金融通用顶部广告位
        new xPromotion({
            ad_id: '31',
            batchCount: '1',
            tplType: '1'
        });
        new xPromotion({
            targetEle: '#bottomAd01',
            ad_id: '15',
            batchCount: '3',
            tplType: '2'
        });
    });

    seajs.use('common/unit/focus/1.0.0/focus', function (focus) {
        // 初始化关注模块
        new focus.setItemFocus({
            // 模块渲染目标
            targetEle: '.j_fundFocus',
            // 产品sku
            sku: '107100',
            // 产品类型 1:基金 2:保险
            type: 1
        });
    });

//    seajs.use("financial/common/module/placehold/1.0.0/js/placehold", function() {
//        $("[place]").placeHolder({
//            autoHide: !1
//        })
//    });

    //检查110028、110027两只基金，当日购买累计金额不能超过100万元
    //add by yougang 2014-10-30
    function checkAmount(itemCode) {
        if (itemCode == '110028' || itemCode == '110027') {
            if ($("#errorMessage").html() == '') {
                $("#errorMessage").html("当日购买累计金额不能超过10万元");
                $("#errorInfo").fadeIn();
                $("#feeTip").hide();
            }
        }
    }
   
</script>
 <script type='text/javascript'>
 		var _jaq = _jaq || [];
 		_jaq.push(['_setAccount', 'UA-JR-fund.jd.com']);
 		_jaq.push("fund-product");
 		(function() {
			var ja = document.createElement('script'); ja.type = 'text/javascript'; ja.async = true;
 			ja.src ="//ag.jd.com/resource/psa-ag-1.1.js";    
			 var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ja, s);
 		})();
	</script>

<!-- footer -->
<!--footer-->
<div class="f-copyright">
    <div class="grid-1200 footerHolder">
        <div class="footer-nav">
            <p>
                <a href="//jrhelp.jd.com/show/getProblemInfo?id=688" target="_blank" clstag="jr|keycount|jr_shouye|footer1">关于京东金融</a><span class="footer-nav-cut">|</span>
                <a href="//jrhelp.jd.com/show/getProblemInfo?id=169" target="_blank" clstag="jr|keycount|jr_shouye|footer2">关于京东小金库</a><span class="footer-nav-cut">|</span>
                <a href="//jrhelp.jd.com/show/getProblemInfo?id=244" target="_blank">关于京东白条</a><span class="footer-nav-cut">|</span>
                <a href="//jrhelp.jd.com/show/getProblemInfo-3061" target="_blank" clstag="jr|keycount|jr_shouye|zhishichanquan">知识产权</a><span class="footer-nav-cut">|</span>
                <a href="//jrhelp.jd.com/show/getProblemInfo-1677" target="_blank" rel="nofollow" clstag="jr|keycount|jr_shouye|footer5">免责声明</a><span class="footer-nav-cut">|</span>
                <a href="//sale.jd.com/act/k2dMcbxSONihVnzs.html" target="_blank" clstag="jr|keycount|jr_shouye|footer6">经营证照</a><span class="footer-nav-cut">|</span>
                <a href="//union.jr.jd.com/" target="_blank" clstag="jr|keycount|jr_shouye|footer7">金融联盟</a><span class="footer-nav-cut">|</span>
                <a href="//jrhelp.jd.com/show/getProblemInfo-2749" target="_blank" rel="nofollow" clstag="jr|keycount|jr_shouye|footer8">平台协议</a><span class="footer-nav-cut">|</span>
                <a href="//jrhelp.jd.com/show/getProblemInfo-2748" target="_blank" rel="nofollow" clstag="jr|keycount|jr_shouye|footer9">隐私政策</a><span class="footer-nav-cut">|</span>
               <a class="item-kefu" href="https://jtalk.jd.com/?entrance=10000&source=web&companyId=1" target="_blank" clstag="jr|keycount|jr_shouye|footer4">联系客服</a>
            </p>
            <p>
                Copyright &copy; 2004-2018 京东JD.com 版权所有<span class="footer-nav-cut">|</span>投资有风险，购买需谨慎
            </p>
        </div>
    </div>
</div>
<!--footer end-->
<!-- footer end -->
</body>
</html>