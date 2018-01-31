<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <title>优信商城</title>
    <link rel="stylesheet" href="/js/layui/css/layui.css" />
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/x-admin.css" type="text/css">
	<link rel="icon" href="/img/eW-logo.png">
	<link rel="stylesheet" href="/css/iconfont.css">

</head>
<body>

<!-- layout admin -->
<div class="layui-layout layui-layout-admin"> <!-- 添加skin-1类可手动修改主题为纯白，添加skin-2类可手动修改主题为蓝白 -->
    <!-- header -->
    <div class="layui-header my-header">
        <a href="#(ctxPath)">
            <div class="my-header-logo">优信商城</div>
        </a>
        <!-- <div class="my-header-btn">
            <button class="layui-btn layui-btn-small btn-nav"><i class="layui-icon">&#xe65f;</i></button>
        </div> -->

        <!-- 顶部左侧添加选项卡监听 -->
        <!-- <ul class="layui-nav" lay-filter="side-top-left">

        </ul> -->

        <!-- 顶部右侧添加选项卡监听 -->
        <ul class="layui-nav my-header-user-nav" lay-filter="side-top-right">
            <li class="layui-nav-item">
                <a class="name" href="javascript:;"><i class="layui-icon">&#xe629;</i>主题</a>
                <dl class="layui-nav-child">
                    <dd data-skin="0"><a href="javascript:;">默认</a></dd>
                    <dd data-skin="1"><a href="javascript:;">纯白</a></dd>
                    <dd data-skin="2"><a href="javascript:;">蓝白</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a class="name" href="javascript:;"><img class="layui-circle" >BeautifulSoup</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" href-url="/system/user/profile">个人资料</a></dd>
                    <dd><a href="javascript:;" href-url="/system/user/changepwd">修改密码</a></dd>
                    <dd><a href="#(ctxPath)/logout"><i class="layui-icon">&#x1006;</i>退出</a></dd>
                </dl>
            </li>
        </ul>

    </div>
    
    <!-- side -->
    <div class="layui-side my-side">
        <div class="layui-side-scroll">
            <!-- 左侧主菜单添加选项卡监听 -->
            <ul class="layui-nav layui-nav-tree" lay-filter="side-main">
            </ul>

        </div>
    </div>
    <!-- body -->
    
    
    
    fdfaafas
    
    
    
    
    
    

    
    
    
    <!-- footer -->
    <div class="layui-footer my-footer">
        <p><a href="#(APP.orgWebsite)" target="_blank">youxin.store.org</a>&nbsp;&nbsp;&&nbsp;&nbsp;<a href="javascript:;" target="_blank">优信商城</a></p>
        <p>@CopyRight BeautifulSoup</p>
    </div>
</div>


<!-- 右键菜单 -->
<div class="my-dblclick-box none">
    <table class="layui-tab dblclick-tab">
        <tr class="card-refresh">
            <td><i class="layui-icon">&#x1002;</i>刷新当前标签</td>
        </tr>
        <tr class="card-close">
            <td><i class="layui-icon">&#x1006;</i>关闭当前标签</td>
        </tr>
        <tr class="card-close-all">
            <td><i class="layui-icon">&#x1006;</i>关闭所有标签</td>
        </tr>
    </table>
</div>

<script type="text/javascript" src="/js/layui/layui.js"></script>
<script type="text/javascript" src="/js/vip_comm.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>
<script type="text/javascript" src="/js/ztree/jquery-1.4.4.min.js"></script>

<script type="text/javascript">
    layui.use(['layer','vip_nav'], function () {

        // 操作对象
        /* var layer       = layui.layer
            ,vipNav     = layui.vip_nav
            ,$          = layui.jquery;*/
        // 顶部左侧菜单生成 [请求地址,过滤ID,是否展开,携带参数]
        //vipNav.top_left('#(ctxPath)/system/res/menuTop','side-top-left',false);

        // you code ...


    });
</script>
</body>
</html>