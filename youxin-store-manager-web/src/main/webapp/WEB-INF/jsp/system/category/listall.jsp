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
		<link rel="stylesheet" href="/css/btable.css">
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
							<dl class="layui-nav-child">
								<dd title="按钮">
									<a href="javascript:;" data-url="https://www.baidu.com">
											<img src="/img/category.png" /> &nbsp;
												商品分类查询
									</a>
								</dd>
								<dd title="按钮">
									<a href="javascript:;" data-url="https://www.baidu.com">
											<img src="/img/category.png" /> &nbsp;
												商品分类添加
									</a>
								</dd>
							</dl>
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

 <div style="margin:0px; background-color: white; margin:0 10px;">
        <blockquote class="layui-elem-quote">
            <button type="button" class="layui-btn layui-btn-small" id="getAll"><i class="fa fa-plus" aria-hidden="true"></i> 添加</button>
            <form class="layui-form" style="float:right;">
                <div class="layui-form-item" style="margin:0;">
                    <label class="layui-form-label">名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="name" placeholder="支持模糊查询.." autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux" style="padding:0;">
                        <button lay-filter="search" class="layui-btn" lay-submit><i class="fa fa-search" aria-hidden="true"></i> 查询</button>
                    </div>
                </div>
            </form>
        </blockquote>
        <div id="content" style="width: 100%;height: 533px;">
        	<div class="btable">
        		<table class="layui-table layui-form" lay-even>
        			<thead>
        				<tr>
        					<th style="width:28px;">序号</th>
        					<th data-name="name">商品分类名称</th>
        					<th data-name="createtime">创建时间</th>
        					<th>商品分类简介</th>
        					<th>操作</th>
        				</tr>
        				
        			</thead>
        			<tbody class="btable-content">
        				<tr>
        					<td>1</td>
        					<td>家用电器</td>
        					<td>2018-01-31</td>
        					<td>日常的家用电器,如电饭锅,电冰箱,空调等</td>
        					<td>
        						<input type="button" value="编辑" class="layui-btn layui-btn-mini">
        						<input type="button" value="删除" class="layui-btn layui-btn-mini layui-btn-danger">
        					</td>
        				</tr>
        				<tr>
        					<td>1</td>
        					<td>家用电器</td>
        					<td>2018-01-31</td>
        					<td>日常的家用电器,如电饭锅,电冰箱,空调等</td>
        					<td>
        						<input type="button" value="编辑" class="layui-btn layui-btn-mini">
        						<input type="button" value="删除" class="layui-btn layui-btn-mini layui-btn-danger">
        					</td>
        				</tr>
        				<tr>
        					<td>1</td>
        					<td>家用电器</td>
        					<td>2018-01-31</td>
        					<td>日常的家用电器,如电饭锅,电冰箱,空调等</td>
        					<td>
        						<input type="button" value="编辑" class="layui-btn layui-btn-mini">
        						<input type="button" value="删除" class="layui-btn layui-btn-mini layui-btn-danger">
        					</td>
        				</tr>
        				<tr>
        					<td>1</td>
        					<td>家用电器</td>
        					<td>2018-01-31</td>
        					<td>日常的家用电器,如电饭锅,电冰箱,空调等</td>
        					<td>
        						<input type="button" value="编辑" class="layui-btn layui-btn-mini">
        						<input type="button" value="删除" class="layui-btn layui-btn-mini layui-btn-danger">
        					</td>
        				</tr>
        				<tr>
        					<td>1</td>
        					<td>家用电器</td>
        					<td>2018-01-31</td>
        					<td>日常的家用电器,如电饭锅,电冰箱,空调等</td>
        					<td>
        						<input type="button" value="编辑" class="layui-btn layui-btn-mini">
        						<input type="button" value="删除" class="layui-btn layui-btn-mini layui-btn-danger">
        					</td>
        				</tr>
        			
        			</tbody>
        		</table>
        		<div class="btable-paged">
        			<div class="layui-box layui-laypage layui-laypage-default">
        				<a class="layui-laypage-prev">上一页</a>
        				<a>1</a>
        				<a class="layui-laypage-curr">2</a>
        			</div>
        		</div>
        	</div>
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

<script>
        layui.config({
            base: 'js/',
            v: new Date().getTime()
        }).use(['btable', 'form'], function () {
            var btable = layui.btable(),
                $ = layui.jquery,
                layerTips = parent.layer === undefined ? layui.layer : parent.layer, //获取父窗口的layer对象
                layer = layui.layer,//获取当前窗口的layer对象;
                form = layui.form();

            btable.set({
                openWait: true,//开启等待框
                elem: '#content',
                url: 'datas/btable_data.json', //数据源地址
                pageSize: 3,//页大小
                params: {//额外的请求参数
                    t: new Date().getTime()
                },
                columns: [{ //配置数据列
                    fieldName: '昵称', //显示名称
                    field: 'name', //字段名
                    sortable: true //是否显示排序
                }, {
                    fieldName: '加入时间',
                    field: 'createtime',
                    sortable: true
                }, {
                    fieldName: '签名',
                    field: 'sign',
                    format: function (id, obj) {
                        //id
                        console.log(id);
                        //行数据对象
                        console.log(obj);
                        //返回值：格式化的纯文本或html文本
                        return obj.sign;
                    }
                }, {
                    fieldName: '操作',
                    field: 'id',
                    format: function (val,obj) {
                        var html = '<input type="button" value="编辑" data-action="edit" data-id="' + val + '" class="layui-btn layui-btn-mini" /> ' +
                            '<input type="button" value="删除" data-action="del" data-id="' + val + '" class="layui-btn layui-btn-mini layui-btn-danger" />';
                        return html;
                    }
                }],
                even: true,//隔行变色
                field: 'id', //主键ID
                //skin: 'row',
                checkbox: false,//是否显示多选框
                paged: true, //是否显示分页
                singleSelect: false, //只允许选择一行，checkbox为true生效
                onSuccess: function ($elem) { //$elem当前窗口的jq对象
                    $elem.children('tr').each(function () {
                        $(this).children('td:last-child').children('input').each(function () {
                            var $that = $(this);
                            var action = $that.data('action');
                            var id = $that.data('id');
                            $that.on('click', function () {
                                switch (action) {
                                    case 'edit':
                                        layerTips.msg(action + ":" + id);
                                        break;
                                    case 'del': //删除
                                        var name = $that.parent('td').siblings('td[data-field=name]').text();
                                        //询问框
                                        layerTips.confirm('确定要删除[ <span style="color:red;">' + name + '</span> ] ？', { icon: 3, title: '系统提示' }, function (index) {
                                            $that.parent('td').parent('tr').remove();
                                            layerTips.msg('删除成功.');
                                        });
                                        break;
                                }
                            });
                        });
                    });
                }
            });
            btable.render();
            //监听搜索表单的提交事件
            form.on('submit(search)', function (data) {
                btable.get(data.field);
                return false;
            });
            $(window).on('resize', function (e) {
                var $that = $(this);
                $('#content').height($that.height() - 92);
            }).resize();
        });
    </script>

<script type="text/javascript" src="/js/layui/layui.js"></script>
<script type="text/javascript" src="/js/comm_notbar.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>
<script type="text/javascript" src="/js/ztree/jquery-1.4.4.min.js"></script>
</html>