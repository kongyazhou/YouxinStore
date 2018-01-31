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
<body class="body">

<div class="x-body">
    <form class="layui-form" action="">
        <input type="hidden" name="pid" value="#(pRes.id)">
        <div class="layui-form-item">
            <label class="layui-form-label">父级名称</label>
            <div class="layui-input-block">
                <input type="text" name="pname" placeholder="父级名称" class="layui-input" value="#(pRes.name)" readonly="readonly" disabled="disabled"/>
            </div>
        </div>

        <input type="hidden" name="res.id" value="#(res.id ??)">
        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>资源名称</label>
            <div class="layui-input-block">
                <input type="text" name="res.name" placeholder="资源名称" class="layui-input" value="#(res.name ??)" required  lay-verify="required" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>资源URL</label>
            <div class="layui-input-block">
                <input type="text" name="res.url" placeholder="资源URL" class="layui-input" value="#(res.url ??)" required  lay-verify="required" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">资源图标</label>
            <div class="layui-input-block">
                <input type="text" name="res.iconCls" placeholder="资源图标" class="layui-input" value="" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>资源描述</label>
            <div class="layui-input-block">
                <input type="text" name="res.des" placeholder="资源描述" class="layui-input" value="#(res.des ??)" required  lay-verify="required" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>资源类型</label>
            <div class="layui-input-block">
                <select id='type' name="res.type" lay-verify="required">
                    <option></option>
                    #option("TYPE_SYSTEM_RES", res.type)
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>排序号</label>
            <div class="layui-input-block">
                <input type="number" name="res.seq" placeholder="排序号" class="layui-input" value="#(res.seq ??)" required  lay-verify="required" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>状态</label>
            <div class="layui-input-block">
                <select id='status' name="res.status" lay-verify="required">
                    <option></option>
                    #statusOption(io.jboot.admin.service.entity.status.system.ResStatus::me(), res.status)
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"></label>
            <button  class="layui-btn" lay-filter="sub" lay-submit>
                保存
            </button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </form>
</div>
<script type="text/javascript">
    layui.use(['form', 'layer'], function () {
        // 操作对象
        var form = layui.form
            , layer = layui.layer
            , $ = layui.jquery;

        form.on('submit(sub)', function(data){
            util.sendAjax ({
                type: 'POST',
                url: '#(ctxPath)/system/res/postUpdate',
                data: $.param(data.field),
                loadFlag: true,
                success : function(data){
                    pop_close();
                }
            });
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });
    });
</script>
</body>
<script type="text/javascript" src="/js/layui/layui.js"></script>
<script type="text/javascript" src="/js/comm_notbar.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>
<script type="text/javascript" src="/js/ztree/jquery-1.4.4.min.js"></script>
</html>