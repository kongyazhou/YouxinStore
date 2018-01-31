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
<link rel="stylesheet" href="#(RESOURCE_HOST)/static/css/zTreeStyle/zTreeStyle.css" type="text/css">
</head>
<body class="body">

<div class="x-body">
    <form class="layui-form" action="">
        <input type="hidden" id="id" name="id" value="#(role.id)">
        <input type="hidden" id="resIds" name="resIds" />
        <div class="layui-form-item">
            <p>#(role.name ??) 角色赋权</p>
        </div>

        <div class="layui-form-item">
            <ul id="tree" class="ztree"></ul>
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
<script type="text/javascript" src="#(RESOURCE_HOST)/static/js/ztree/jquery.ztree.all.min.js"></script>
<script type="text/javascript">
    var setting = {
        check: {
            enable: true,
            chkboxType: { "Y": "ps", "N": "s" }
        },
        data: {
            simpleData: {
                enable: true
            }
        },
        callback: {
            onCheck: onCheck
        }
    };

    function onCheck(e, treeId, treeNode) {
        setcheckValue();
    }

    function setcheckValue() {
        var zTree = $.fn.zTree.getZTreeObj("tree");
        var selectNodes = zTree.getCheckedNodes(true);

        var ids = "";
        for (var i=0; i < selectNodes.length; i++) {
            ids += selectNodes[i].id + ",";
        }
        $("#resIds").val(ids);
    }

    function zTreeReload() {
        util.sendAjax ({
            url : '#(ctxPath)/system/res/resAuthTree',
            data : {id: #(role.id ??)},
            notice: false,
            success : function(data){
                $.fn.zTree.init($("#tree"), setting, data.data);
                setcheckValue();
            }
        })
    }

    $(document).ready(function(){
        zTreeReload();
    });


    layui.use(['form', 'layer'], function () {
        // 操作对象
        var form = layui.form
            , layer = layui.layer
            , $ = layui.jquery;

        form.on('submit(sub)', function(data){

            util.sendAjax ({
                type: 'POST',
                url: '#(ctxPath)/system/role/postAuth',
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
<script type="text/javascript" src="#(RESOURCE_HOST)/static/js/layui/layui.js"></script>
<script type="text/javascript" src="#(RESOURCE_HOST)/static/js/comm_notbar.js"></script>
<script type="text/javascript" src="#(RESOURCE_HOST)/static/js/utils.js"></script>
<script type="text/javascript" src="#(RESOURCE_HOST)/static/js/ztree/jquery-1.4.4.min.js"></script>
</html>
