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
    <form id="addForm" class="layui-form" action="">
        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>代码</label>
            <div class="layui-input-block">
                <input type="text" name="data.code" placeholder="代码" class="layui-input" value="" required  lay-verify="required" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>代码描述</label>
            <div class="layui-input-block">
                <input type="text" name="data.codeDesc" placeholder="代码描述" class="layui-input" value="" required  lay-verify="required" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>类型代码</label>
            <div class="layui-input-block">
                <input type="text" name="data.type" placeholder="类型代码" class="layui-input" value="" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>类型描述</label>
            <div class="layui-input-block">
                <input type="text" name="data.typeDesc" placeholder="类型描述" class="layui-input" value="" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>排序号</label>
            <div class="layui-input-block">
                <input type="number" name="data.orderNo" placeholder="排序号" class="layui-input" value="" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>状态</label>
            <div class="layui-input-block">
                <select id='status' name="data.status" lay-verify="required">
                    <option></option>
                    #statusOption(io.jboot.admin.service.entity.status.system.DataStatus::me(), '1')
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
                url: '#(ctxPath)/system/data/postAdd',
                data: $('#addForm').serialize(),
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
