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

 <div class="layui-fluid">
        <form id="searchForm" class="layui-form x-center" action="" >
            <div class="layui-form-pane">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名称</label>
                    <div class="layui-input-inline">
                        <input type="text" id="name" name="name" placeholder="用户名称" class="layui-input"/>
                    </div>
                    <label class="layui-form-label">电话号码</label>
                    <div class="layui-input-inline">
                        <input type="text" id="phone" name="phone" placeholder="电话号码" class="layui-input"/>
                    </div>
                    <div class="layui-input-inline" style="width : 80px">
                        <button class="layui-btn"  lay-submit="" lay-filter="search"><i class="layui-icon">&#xe615;</i></button>
                    </div>
                </div>
            </div>
        </form>
        <hr>
        <div class="layui-row">
            <div class="layui-btn-group">
                #shiroHasPermission('/system/user/add')
                <button id="add" class="layui-btn layui-btn-small">添加用户</button>
                #end
            </div>
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
                , {field: 'name', title: '用户名称', width: 100}
                , {field: 'phone', title: '电话号码', width: 120}
                , {field: 'email', title: '邮箱', width: 120}
                , {field: 'status', title: '状态', width: 60, templet: '#statusTpl(io.jboot.admin.service.entity.status.system.UserStatus::me(), "status")'}
                , {field: 'createdate', title: '创建时间', width: 150}
                , {field: 'lastUpdAcct', title: '最后更新人', width: 100}
                , {field: 'lastUpdTime', title: '最后更新时间', width: 150}
                , {field: 'note', title: '备注', width: 150}
                , {fixed: 'right', title: '操作', width: 200, align: 'center', toolbar: '#barOption'} //这里的toolbar值是模板元素的选择器
            ]]
            , url: '#(ctxPath)/system/user/tableData'
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

        table.on('tool(dateTable)', function(obj){
            var data = obj.data;
            if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    util.sendAjax ({
                        type: 'POST',
                        url: '#(ctxPath)/system/user/delete',
                        data: {id : data.id},
                        loadFlag: true,
                        success : function(data){
                            layer.close(index);
                            reloadTable($('#name').val(), $('#phone').val());
                        },
                        unSuccess: function (data) {
                            layer.close(index);
                        }
                    })
                });
            } else if(obj.event === 'edit'){
                pop_show('编辑用户','#(ctxPath)/system/user/update?id=' + data.id,'','', function(){
                    reloadTable($('#name').val(), $('#phone').val());
                });
            } else if(obj.event === 'use'){
                util.sendAjax ({
                    type: 'POST',
                    url: '#(ctxPath)/system/user/use',
                    data: {id : data.id},
                    loadFlag: true,
                    success : function(data){
                        reloadTable($('#name').val(), $('#phone').val());
                    }
                });
            } else if(obj.event === 'unuse'){
                layer.confirm('确定锁定该用户吗', function(index){
                    util.sendAjax ({
                        type: 'POST',
                        url: '#(ctxPath)/system/user/unuse',
                        data: {id : data.id},
                        loadFlag: true,
                        success : function(data){
                            layer.close(index);
                            reloadTable($('#name').val(), $('#phone').val());
                        },
                        unSuccess: function (data) {
                            layer.close(index);
                        }
                    });
                });
            }
        });

        $("#add").click(function(){
            pop_show('添加用户','#(ctxPath)/system/user/add','','', function(){
                reloadTable($('#name').val(), $('#phone').val());
            });
        });

        reloadTable = function (name, phone) {
            table.reload('dateTable', {
                url: '#(ctxPath)/system/user/tableData'
                ,where: {name: name, phone: phone} //设定异步数据接口的额外参数
            });
        }

        form.on('submit(search)', function(data){
            reloadTable(data.field.name, data.field.phone);
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });
    });


</script>
<script type="text/html" id="barOption">
    #shiroHasPermission('/system/user/update')
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    #end

    #[[
    {{#  if(d.status == '2'){ }}
    ]]#
    #shiroHasPermission('/system/user/use')
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="use">解锁</a>
    #end
    #[[
    {{#  } }}
    ]]#

    #[[
    {{#  if(d.status == '1'){ }}
    ]]#
    #shiroHasPermission('/system/user/unuse')
    <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="unuse">锁定</a>
    #end
    #[[
    {{#  } }}
    ]]#

    #shiroHasPermission('/system/user/delete')
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    #end
</script>
</body>
<script type="text/javascript" src="/js/layui/layui.js"></script>
<script type="text/javascript" src="/js/comm_notbar.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>
<script type="text/javascript" src="/js/ztree/jquery-1.4.4.min.js"></script>
</html>
