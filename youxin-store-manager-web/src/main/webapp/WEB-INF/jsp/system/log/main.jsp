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
<link rel="stylesheet" href="#(RESOURCE_HOST)/static/js/layui/css/layui.css" />
<link rel="stylesheet" href="#(RESOURCE_HOST)/static/css/style.css">
<link rel="stylesheet" href="#(RESOURCE_HOST)/static/css/x-admin.css" type="text/css">
<link rel="icon" href="#(RESOURCE_HOST)/static/img/eW-logo.png">
<link rel="stylesheet" href="#(RESOURCE_HOST)/static/css/iconfont.css">

</head>
<body class="body">

  <div class="layui-fluid">
        <form id="searchForm" class="layui-form x-center" >
            <div class="layui-form-pane">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-inline">
                        <input type="text" id="userName" name="userName" placeholder="用户名" class="layui-input"/>
                    </div>
                    <label class="layui-form-label">IP</label>
                    <div class="layui-input-inline">
                        <input type="text" id="ip" name="ip" placeholder="IP" class="layui-input"/>
                    </div>
                    <label class="layui-form-label">URL</label>
                    <div class="layui-input-inline">
                        <input type="text" id="url" name="url" placeholder="请求URL" class="layui-input"/>
                    </div>
                    <div class="layui-input-inline" style="width : 80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="search"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                </div>
            </div>
        </form>
        <hr>
        <div class="layui-row">
            <table id="dateTable" lay-filter="dateTable"></table>
        </div>
    </div>
<script type="text/javascript">
    layui.use(['table', 'layer'], function () {
        var table = layui.table
            , layer = layui.layer
            , $ = layui.jquery
            , form = layui.form;

        // 表格渲染
        var tableIns = table.render({
            elem: '#dateTable'                  //指定原始表格元素选择器（推荐id选择器）
            , id: 'dateTable'
            , even: true //开启隔行背景
            , size: 'sm' //小尺寸的表格
            , height: 'full-150'    //容器高度
            , cols: [[                  //标题栏
                {checkbox: false, sort: true, fixed: true, space: true}
                , {field: 'id', title: 'ID', width: 60}
                , {field: 'lastUpdAcct', title: '用户', width: 100}
                , {field: 'url', title: '请求url', width: 180}
                , {field: 'from', title: '来源', width: 180}
                , {field: 'ip', title: 'ip', width: 140}
                , {field: 'browser', title: '浏览器', width: 120}
                , {field: 'operation', title: '操作', width: 80}
                , {field: 'createDate', title: '访问时间', width: 150}
            ]]
            , url: '#(ctxPath)/system/log/tableData'
            , method: 'get'
            , request: {
                pageName: 'pageNumber' //页码的参数名称，默认：page
                ,limitName: 'pageSize' //每页数据量的参数名，默认：limit
            }
            , page: true
            , limits: [30, 60, 90, 150, 300]
            , limit: 30 //默认采用30
            , loading: true
            , done: function (res, curr, count) {
            }
        });

        reloadTableQuery = function () {
            table.reload('dateTable', {
                url: '#(ctxPath)/system/log/tableData'
                ,where: {ip: $('#ip').val(), url: $('#url').val(), userName: $('#userName').val()} //设定异步数据接口的额外参数
            });
        }

        reloadTable = function (ip, url, userName) {
            table.reload('dateTable', {
                url: '#(ctxPath)/system/log/tableData'
                ,where: {ip: ip, url: url, userName: userName} //设定异步数据接口的额外参数
            });
        }

        form.on('submit(search)', function(data){
            reloadTable(data.field.ip, data.field.url, data.field.userName);
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });
    });
</script>
</body>
<script type="text/javascript" src="#(RESOURCE_HOST)/static/js/layui/layui.js"></script>
<script type="text/javascript" src="#(RESOURCE_HOST)/static/js/comm_notbar.js"></script>
<script type="text/javascript" src="#(RESOURCE_HOST)/static/js/utils.js"></script>
<script type="text/javascript" src="#(RESOURCE_HOST)/static/js/ztree/jquery-1.4.4.min.js"></script>
</html>