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
<link rel="stylesheet" href="/css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" href="/js/layui/css/layui.css" />
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/x-admin.css" type="text/css">
<link rel="icon" href="/img/eW-logo.png">
<link rel="stylesheet" href="/css/iconfont.css">
</head>
<body class="body">


<div class="layui-fluid">
        <div class="layui-row">
            <div class="layui-col-md3">
                <ul id="tree" class="ztree"></ul>
            </div>
            <div class="layui-col-md9">
                <div class="layui-btn-group">
                    #shiroHasPermission('/system/res/add')
                    <button id="addRes" class="layui-btn layui-btn-small">添加资源</button>
                    #end
                    <button id="module" class="layui-btn layui-btn-small">子模块管理</button>
                </div>
                <table id="dateTable" lay-filter="dateTable"></table>
            </div>
        </div>
    </div>
    
<script type="text/javascript" src="/js/ztree/jquery.ztree.all.min.js"></script>
<script type="text/javascript">
    var setting = {
        data: {
            simpleData: {
                enable: true
            }
        },
        callback: {
            onClick: zTreeOnClick
        }
    };

    var pid = 0;

    var reloadTable;
    function zTreeOnClick(event, treeId, treeNode) {
        reloadTable(treeNode.id);
    }

    function zTreeReload() {
        util.sendAjax ({
            url : '#(ctxPath)/system/res/resTree',
            notice: false,
            success : function(data){
                $.fn.zTree.init($("#tree"), setting, data.data);
            }
        })
    }

    $(document).ready(function(){
        zTreeReload();
    });

    layui.use(['table', 'layer'], function () {
        var table = layui.table
            , layer = layui.layer
            , $ = layui.jquery;

        // 表格渲染
        var tableIns = table.render({
            elem: '#dateTable'                  //指定原始表格元素选择器（推荐id选择器）
            , id: 'dateTable'
            , even: true //开启隔行背景
            , size: 'sm' //小尺寸的表格
            , height: 'full-100'    //容器高度
            , cols: [[                  //标题栏
                {checkbox: false, sort: true, fixed: true, space: true}
                , {field: 'id', title: 'ID', width: 60}
                , {field: 'name', title: '资源名称', width: 120}
                , {field: 'des', title: '资源描述', width: 120}
                , {field: 'url', title: '资源URL', width: 120}
                , {field: 'iconCls', title: '资源图标', width: 100, templet: '<div><i class="iconfont">{{d.iconCls }}</i></div>'}
                , {field: 'seq', title: '资源序号', width: 100}
                , {field: 'type', title: '资源类型', width: 100, templet: '#dataTpl("TYPE_SYSTEM_RES", "type")'}
                , {field: 'status', title: '状态', width: 60, templet: '#statusTpl(io.jboot.admin.service.entity.status.system.ResStatus::me(), "status")'}
                , {field: 'lastUpdAcct', title: '最后更新人', width: 100}
                , {field: 'lastUpdTime', title: '最后更新时间', width: 150}
                , {field: 'note', title: '备注', width: 150}
                , {fixed: 'right', title: '操作', width: 160, align: 'center', toolbar: '#barOption'} //这里的toolbar值是模板元素的选择器
            ]]
            , url: '#(ctxPath)/system/res/resData'
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

        // 获取选中行
        table.on('checkbox(dateTable)', function (obj) {
            console.log(obj.checked); //当前是否选中状态
            console.log(obj.data); //选中行的相关数据
            console.log(obj.type); //如果触发的是全选，则为：all，如果触发的是单选，则为：one
        });

        table.on('tool(dateTable)', function(obj){
            var data = obj.data;
            if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    util.sendAjax ({
                        type: 'POST',
                        url: '#(ctxPath)/system/res/delete',
                        data: {id : data.id},
                        loadFlag: true,
                        success : function(data){
                            layer.close(index);
                            reloadTable(pid);
                            zTreeReload();
                        },
                        unSuccess: function (data) {
                            layer.close(index);
                        }
                    })
                });
            } else if(obj.event === 'edit'){
                pop_show('编辑资源','#(ctxPath)/system/res/update?id=' + data.id,'','', function(){
                    reloadTable(pid);
                    zTreeReload();
                });
            } else if(obj.event === 'use'){
                util.sendAjax ({
                    type: 'POST',
                    url: '#(ctxPath)/system/res/use',
                    data: {id : data.id},
                    loadFlag: true,
                    success : function(data){
                        reloadTable(pid);
                    }
                });
            } else if(obj.event === 'unuse'){
                util.sendAjax ({
                    type: 'POST',
                    url: '#(ctxPath)/system/res/unuse',
                    data: {id : data.id},
                    loadFlag: true,
                    success : function(data){
                        reloadTable(pid);
                    }
                });
            }
        });

        $("#addRes").click(function(){
            pop_show('添加资源','#(ctxPath)/system/res/add?pid=' + pid,'','', function(){
                reloadTable(pid);
                zTreeReload();
            });
        });

        $("#module").click(function(){
            reloadTable(0);
        });

        reloadTable = function (_pid) {
            pid = _pid;
            table.reload('dateTable', {
                url: '#(ctxPath)/system/res/resData'
                ,where: {pid: pid} //设定异步数据接口的额外参数
            });
        }
    });


</script>

<script type="text/html" id="barOption">
    #shiroHasPermission('/system/res/update')
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    #end

    #[[
    {{#  if(d.status == '0'){ }}
    ]]#
    #shiroHasPermission('/system/res/use')
    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="use">启用</a>
    #end
    #[[
    {{#  } }}
    ]]#

    #[[
    {{#  if(d.status == '1'){ }}
    ]]#
    #shiroHasPermission('/system/res/unuse')
    <a class="layui-btn layui-btn-warm layui-btn-xs" lay-event="unuse">停用</a>
    #end
    #[[
    {{#  } }}
    ]]#

    #shiroHasPermission('/system/res/delete')
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    #end
</script>
</body>
<script type="text/javascript" src="/js/layui/layui.js"></script>
<script type="text/javascript" src="/js/comm_notbar.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>
<script type="text/javascript" src="/js/ztree/jquery-1.4.4.min.js"></script>
</html>