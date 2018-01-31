<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登录</title>
    <link rel="stylesheet" href="/js/layui/css/layui.css" />
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/x-admin.css" type="text/css">
	<link rel="icon" href="/img/eW-logo.png">
	<link rel="stylesheet" href="/css/iconfont.css">
</head>
<body class="login-body body">

<div class="login-box">
    <form class="layui-form layui-form-pane" method="get" action="">
        <div class="layui-form-item">
            <h3>优信商城</h3>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">账号：</label>
            <div class="layui-input-inline">
                <input type="text" name="loginName" class="layui-input" required lay-verify="required" placeholder="账号" autocomplete="on" maxlength="16" minlength="4"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码：</label>
            <div class="layui-input-inline">
                <input type="password" name="password" class="layui-input" required lay-verify="required" placeholder="密码" maxlength="16" minlength="6"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">验证码：</label>

            <div class="layui-input-inline">
                <input type="text" name="capval" class="layui-input" required lay-verify="required" placeholder="验证码" maxlength="4" minlength="4"/>
                <img alt="验证码" src="#(ctxPath)/captcha" onclick = "this.src='#(ctxPath)/captcha?'+Math.random()">
            </div>
        </div>
        <div class="layui-form-item">
            <button type="reset" class="layui-btn layui-btn-danger btn-reset">重置</button>
            <button type="button" class="layui-btn btn-submit" lay-submit lay-filter="sub">立即登录</button>
        </div>
    </form>
</div>

<script type="text/javascript" src="/js/layui/layui.js"></script>
<script type="text/javascript" src="/js/comm_notbar.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>
<script type="text/javascript" src="/js/ztree/jquery-1.4.4.min.js"></script>
<script type="text/javascript">
    layui.use(['form', 'layer'], function () {
        // 操作对象
        var form = layui.form
            , layer = layui.layer
            , $ = layui.jquery;

        // 提交监听
        form.on('submit(sub)', function (data) {
            util.sendAjax ({
                type: 'POST',
                url: '#(ctxPath)/postLogin',
                data: $.param(data.field),
                loadFlag: true,
                success : function(data){
                    window.location.href = "/";
                }
            });

            return false;
        });
    })

</script>
</body>
</html>