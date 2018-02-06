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
		<link href="http://m.zhengjinfan.cn/plugins/layui/css/modules/layer/default/layer.css?v=3.0.2302">
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
							<dl class="layui-nav-child">
								<dd title="按钮">
									<a href="javascript:;" data-url="https://www.baidu.com">
											<img src="/img/category.png" /> &nbsp;
												商品查询
									</a>
								</dd>
								<dd title="按钮">
									<a href="javascript:;" data-url="https://www.baidu.com">
											<img src="/img/category.png" /> &nbsp;
												商品添加
									</a>
								</dd>
								<dd title="按钮">
									<a href="javascript:;" data-url="https://www.baidu.com">
											<img src="/img/category.png" /> &nbsp;
												商品删除
									</a>
								</dd>
								
							</dl>
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
<blockquote class="layui-elem-quote">
				<a href="javascript:;" class="layui-btn layui-btn-small" id="add">
					<i class="layui-icon">&#xe608;</i> 添加信息
				</a>
				<a href="#" class="layui-btn layui-btn-small" id="import">
					<i class="layui-icon">&#xe608;</i> 导入信息
				</a>
				<a href="#" class="layui-btn layui-btn-small">
					<i class="fa fa-shopping-cart" aria-hidden="true"></i> 导出信息
				</a>
				<a href="#" class="layui-btn layui-btn-small" id="getSelected">
					<i class="fa fa-shopping-cart" aria-hidden="true"></i> 获取全选信息
				</a>
				<a href="javascript:;" class="layui-btn layui-btn-small" id="search">
					<i class="layui-icon">&#xe615;</i> 搜索
				</a>
			</blockquote>
 <fieldset class="layui-elem-field">
				<legend>数据列表</legend>
				<div class="layui-field-box layui-form">
					<table class="layui-table admin-table">
						<thead>
							<tr>
								<th>姓名</th>
								<th>年龄</th>
								<th>创建时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody id="content">
						<tr>
        					<td>1</td>
        					<td>家用电器</td>
        					<td>2018-01-31</td>
        					<td>
        						<input type="button" value="预览" class="layui-btn layui-btn-mini">
        						<input type="button" value="" class="layui-btn layui-btn-mini layui-btn-danger">
        					</td>
        				</tr>
						</tbody>
					</table>
				</div>
			</fieldset>

							
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

<script type="text/html" id="tpl">
			{{# layui.each(d.list, function(index, item){ }}
			<tr>
				<td><input type="checkbox" lay-skin="primary"></td>
				<td>{{ item.name }}</td>
				<td>{{ item.age }}</td>
				<td>{{ item.createtime }}</td>
				<td>
					<a href="/detail-1" target="_blank" class="layui-btn layui-btn-normal layui-btn-mini">预览</a>
					<a href="javascript:;" data-name="{{ item.name }}" data-opt="edit" class="layui-btn layui-btn-mini">编辑</a>
					<a href="javascript:;" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini">删除</a>
				</td>
			</tr>
			{{# }); }}
		</script>
		<script>
			layui.config({
				base: 'js/'
			});

			layui.use(['paging', 'form'], function() {
				var $ = layui.jquery,
					paging = layui.paging(),
					layerTips = parent.layer === undefined ? layui.layer : parent.layer, //获取父窗口的layer对象
					layer = layui.layer, //获取当前窗口的layer对象
					form = layui.form();

                paging.init({
                    openWait: true,
                    url: 'datas/laytpl_laypage_data.json?v=' + new Date().getTime(), //地址
					elem: '#content', //内容容器
					params: { //发送到服务端的参数
					},
					type: 'GET',
					tempElem: '#tpl', //模块容器
					pageConfig: { //分页参数配置
						elem: '#paged', //分页容器
						pageSize: 3 //分页大小
					},
					success: function() { //渲染成功的回调
						//alert('渲染成功');
					},
					fail: function(msg) { //获取数据失败的回调
						//alert('获取数据失败')
					},
					complate: function() { //完成的回调
						//alert('处理完成');
						//重新渲染复选框
						form.render('checkbox');
						form.on('checkbox(allselector)', function(data) {
							var elem = data.elem;

							$('#content').children('tr').each(function() {
								var $that = $(this);
								//全选或反选
								$that.children('td').eq(0).children('input[type=checkbox]')[0].checked = elem.checked;
								form.render('checkbox');
							});
						});

						//绑定所有编辑按钮事件						
						$('#content').children('tr').each(function() {
							var $that = $(this);
							$that.children('td:last-child').children('a[data-opt=edit]').on('click', function() {
								layer.msg($(this).data('name'));
							});

						});

					},
				});
				//获取所有选择的列
				$('#getSelected').on('click', function() {
					var names = '';
					$('#content').children('tr').each(function() {
						var $that = $(this);
						var $cbx = $that.children('td').eq(0).children('input[type=checkbox]')[0].checked;
						if($cbx) {
							var n = $that.children('td:last-child').children('a[data-opt=edit]').data('name');
							names += n + ',';
						}
					});
					layer.msg('你选择的名称有：' + names);
				});

				$('#search').on('click', function() {
					parent.layer.alert('你点击了搜索按钮')
				});

				var addBoxIndex = -1;
				$('#add').on('click', function() {
					if(addBoxIndex !== -1)
						return;
					//本表单通过ajax加载 --以模板的形式，当然你也可以直接写在页面上读取
					$.get('temp/edit-form.html', null, function(form) {
						addBoxIndex = layer.open({
							type: 1,
							title: '添加表单',
							content: form,
							btn: ['保存', '取消'],
							shade: false,
							offset: ['100px', '30%'],
							area: ['600px', '400px'],
							zIndex: 19950924,
							maxmin: true,
							yes: function(index) {
								//触发表单的提交事件
								$('form.layui-form').find('button[lay-filter=edit]').click();
							},
							full: function(elem) {
								var win = window.top === window.self ? window : parent.window;
								$(win).on('resize', function() {
									var $this = $(this);
									elem.width($this.width()).height($this.height()).css({
										top: 0,
										left: 0
									});
									elem.children('div.layui-layer-content').height($this.height() - 95);
								});
							},
							success: function(layero, index) {
								//弹出窗口成功后渲染表单
								var form = layui.form();
								form.render();
								form.on('submit(edit)', function(data) {
									console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
									console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
									console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
									//调用父窗口的layer对象
									layerTips.open({
										title: '这里面是表单的信息',
										type: 1,
										content: JSON.stringify(data.field),
										area: ['500px', '300px'],
										btn: ['关闭并刷新', '关闭'],
										yes: function(index, layero) {
											layerTips.msg('你点击了关闭并刷新');
											layerTips.close(index);
											location.reload(); //刷新
										}

									});
									//这里可以写ajax方法提交表单
									return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。									
								});
								//console.log(layero, index);
							},
							end: function() {
								addBoxIndex = -1;
							}
						});
					});
				});

				$('#import').on('click', function() {
					var that = this;
					var index = layer.tips('只想提示地精准些', that, { tips: [1, 'white'] });
					$('#layui-layer' + index).children('div.layui-layer-content').css('color', '#000000');
				});
			});
		</script>

<script type="text/javascript" src="/js/layui/layui.js"></script>
<script type="text/javascript" src="/js/comm_notbar.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>
<script type="text/javascript" src="/js/ztree/jquery-1.4.4.min.js"></script>
</html>