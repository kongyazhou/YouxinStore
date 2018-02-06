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

 <div class="x-body">
    <form id="addForm" class="layui-form" action="">
        <input type="hidden" name="user.id" value="#(user.id)">
        <div class="layui-form-item">
            <label class="layui-form-label"><em class="require-mark">*</em>用户名称</label>
            <div class="layui-input-block">
                <input type="text" name="user.name" placeholder="用户名称" class="layui-input" value="#(user.name)" required  lay-verify="required" autocomplete="off" disabled/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">电话号码</label>
            <div class="layui-input-block">
                <input type="text" name="user.phone" placeholder="电话号码" class="layui-input" value="#(user.phone)" autocomplete="off"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-block">
                <input type="text" name="user.email" placeholder="邮箱" class="layui-input" value="#(user.email)" autocomplete="off"/>
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
    layui.use(['form', 'layer'], function () {
        // 操作对象
        var form = layui.form
            , layer = layui.layer
            , $ = layui.jquery;

        form.on('submit(sub)', function(data){

            util.sendAjax ({
                type: 'POST',
                url: '#(ctxPath)/system/user/profileUpdate',
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
<script type="text/javascript" src="/js/layui/layui.js"></script>
<script type="text/javascript" src="/js/comm_notbar.js"></script>
<script type="text/javascript" src="/js/utils.js"></script>
<script type="text/javascript" src="/js/ztree/jquery-1.4.4.min.js"></script>
</html>