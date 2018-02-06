<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/base.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>优信商城</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="/css/layui.css" media="all" />
		<link rel="stylesheet" href="/css/global.css" media="all">
		<link rel="stylesheet" href="/css/font-awesome.min.css">
		<link rel="stylesheet" href="/css/style.css">
		<link rel="icon" href="/img/eW-logo.png">
	</head>
	<body>
		<div class="layui-layout layui-layout-admin" style="border-bottom: solid 5px #1aa094;">
			<div class="layui-header header header-demo">
				<div class="layui-main">
					<div class="admin-login-box">
						<a class="logo" style="left: 0;" href="http://beginner.zhengjinfan.cn/demo/beginner_admin/">
							<span style="font-size: 22px;">优信商城</span>
						</a>
						<div class="admin-side-toggle">
							<img alt="" src="/img/xuanxiang.png">
						</div>
					</div>
					<ul class="layui-nav admin-header-item">
						<li class="layui-nav-item">
							<a href="javascript:;">清除缓存</a>
						</li>
                        <li class="layui-nav-item" id="pay">
                            <a href="javascript:;">捐赠我</a>
                        </li>
						<li class="layui-nav-item">
							<a href="javascript:;">浏览网站</a>
						</li>
						<li class="layui-nav-item" id="video1">
							<a href="javascript:;">视频</a>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;" class="admin-header-user">
								<img src="/img/icon.png" />
								<span>BeautifulSoup</span>
							</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="javascript:;"><i class="fa fa-user-circle" aria-hidden="true"></i> 个人信息</a>
								</dd>
								<dd>
									<a href="javascript:;"><i class="fa fa-gear" aria-hidden="true"></i> 设置</a>
								</dd>
								<dd id="lock">
									<a href="javascript:;">
										<i class="fa fa-lock" aria-hidden="true" style="padding-right: 3px;padding-left: 1px;"></i> 锁屏 (Alt+L)
									</a>
								</dd>
								<dd>
									<a href="login.html"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a>
								</dd>
							</dl>
						</li>
					</ul>
					<ul class="layui-nav admin-header-item-mobile">
						<li class="layui-nav-item">
							<a href="login.html"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a>
						</li>
					</ul>
				</div>
			</div>
			
			<!-- 侧边栏 -->
			<div class="layui-side layui-bg-black" id="admin-side">
				<div class="layui-side-scroll" id="admin-navbar-side" lay-filter="side">
					<ul class="layui-nav layui-nav-tree beg-navbar">
						<li class="layui-nav-item">
							<a href="javascript:;" data-url="https://www.baidu.com">
								<img src="/img/category.png" /> &nbsp;
								商品分类管理 
							</a>
						</li>
						
						<li class="layui-nav-item">
							<a href="javascript:;" data-url="https://www.baidu.com">
								<img src="/img/product.png" /> &nbsp;
								首页内容管理
							</a>
						</li>
						
						<li class="layui-nav-item">
							<a href="javascript:;" data-url="https://www.baidu.com">
								<img src="/img/pinfo.png" /> &nbsp;
								商品条目管理
							</a>
						</li>
						
						<li class="layui-nav-item">
							<a href="javascript:;" data-url="https://www.baidu.com">
								<img src="/img/person.png" /> &nbsp;
								系统用户管理
							</a>
						</li>
						
						<li class="layui-nav-item">
							<a href="javascript:;" data-url="https://www.baidu.com">
								<img src="/img/baobiao.png" /> &nbsp;
								报表统计
							</a>
						</li>
						
						<li class="layui-nav-item">
							<a href="javascript:;" data-url="https://www.baidu.com">
								<img src="/img/sql.png" /> &nbsp;
								SQL运行状态
							</a>
						</li>
						
						<li class="layui-nav-item">
							<a href="javascript:;" data-url="https://www.baidu.com">
								<img src="/img/rizhi.png" /> &nbsp;
								系统日志监控
							</a>
						</li>
					</ul>
				</div>
			</div>
			
			
			<div class="layui-body" style="bottom: 0;border-left: solid 2px #1AA094;" id="admin-body">
				<div class="layui-tab admin-nav-card layui-tab-brief" lay-filter="admin-tab">
					<ul class="layui-tab-title">
						<li class="layui-this">
							<img alt="" src="/img/category.png">
							<cite>控制面板</cite>
						</li>
					</ul>
					<div class="layui-tab-content ifm" style="min-height: 150px; padding: 5px 0 0 0;">
						<div class="layui-tab-item layui-show">

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
							
						</div>
					</div>
				</div>
			</div>

			<div class="layui-footer footer footer-demo" id="admin-footer">
				<div class="layui-main">
					<p>2018 &copy;
						<a href="https://github.com/fuyunwang/YouxinStore.git">https://github.com/fuyunwang/YouxinStore</a> Apache license
					</p>
				</div>
			</div>
			<div class="site-tree-mobile layui-hide">
				<i class="layui-icon">&#xe602;</i>
			</div>
			<div class="site-mobile-shade"></div>
		</div>
	</body>
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
<script type="text/javascript" src="/js/layui/layui.js"></script>
<script type="text/javascript" src="/js/comm_notbar.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>
<script type="text/javascript" src="/js/ztree/jquery-1.4.4.min.js"></script>
</html>