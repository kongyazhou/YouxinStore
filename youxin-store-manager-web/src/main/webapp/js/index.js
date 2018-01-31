/** index.js By Beginner Emain:zheng_jinfan@126.com HomePage:http://www.zhengjinfan.cn */

var tab;

layui.config({
    base: 'js/',
    version: new Date().getTime()
}).use(['element', 'layer', 'navbar', 'tab'], function () {
    var element = layui.element(),
        $ = layui.jquery,
        layer = layui.layer,
        navbar = layui.navbar();
    tab = layui.tab({
        elem: '.admin-nav-card' //璁剧疆閫夐」鍗″鍣�
        ,
        //maxSetting: {
        //	max: 5,
        //	tipMsg: '鍙兘寮€5涓搰锛屼笉鑳藉啀寮€浜嗐€傜湡鐨勩€�'
        //},
        contextMenu: true,
        onSwitch: function (data) {
            console.log(data.id); //褰撳墠Tab鐨処d
            console.log(data.index); //寰楀埌褰撳墠Tab鐨勬墍鍦ㄤ笅鏍�
            console.log(data.elem); //寰楀埌褰撳墠鐨凾ab澶у鍣�

            console.log(tab.getCurrentTabId())
        },
        closeBefore: function (obj) { //tab 鍏抽棴涔嬪墠瑙﹀彂鐨勪簨浠�
            console.log(obj);
            //obj.title  -- 鏍囬
            //obj.url    -- 閾炬帴鍦板潃
            //obj.id     -- id
            //obj.tabId  -- lay-id
            if (obj.title === 'BTable') {
                layer.confirm('纭畾瑕佸叧闂�' + obj.title + '鍚�?', { icon: 3, title: '绯荤粺鎻愮ず' }, function (index) {
                    //鍥犱负confirm鏄潪闃诲鐨勶紝鎵€浠ヨ繖閲屽叧闂綋鍓峵ab闇€瑕佽皟鐢ㄤ竴涓媎eleteTab鏂规硶
                    tab.deleteTab(obj.tabId);
                    layer.close(index);
                });
                //杩斿洖true浼氱洿鎺ュ叧闂綋鍓峵ab
                return false;
            }else if(obj.title==='琛ㄥ崟'){
                layer.confirm('鏈繚瀛樼殑鏁版嵁鍙兘浼氫涪澶卞摝锛岀‘瀹氳鍏抽棴鍚�?', { icon: 3, title: '绯荤粺鎻愮ず' }, function (index) {
                    tab.deleteTab(obj.tabId);
                    layer.close(index);
                });
                return false;
            }
            return true;
        }
    });
    //iframe鑷€傚簲
    $(window).on('resize', function () {
        var $content = $('.admin-nav-card .layui-tab-content');
        $content.height($(this).height() - 147);
        $content.find('iframe').each(function () {
            $(this).height($content.height());
        });
    }).resize();

    //璁剧疆navbar
    navbar.set({
        spreadOne: true,
        elem: '#admin-navbar-side',
        cached: true,
        data: navs
		/*cached:true,
		url: 'datas/nav.json'*/
    });
    //娓叉煋navbar
    navbar.render();
    //鐩戝惉鐐瑰嚮浜嬩欢
    navbar.on('click(side)', function (data) {
        tab.tabAdd(data.field);
    });
    //娓呴櫎缂撳瓨
    $('#clearCached').on('click', function () {
        navbar.cleanCached();
        layer.alert('娓呴櫎瀹屾垚!', { icon: 1, title: '绯荤粺鎻愮ず' }, function () {
            location.reload();//鍒锋柊
        });
    });

    $('.admin-side-toggle').on('click', function () {
        var sideWidth = $('#admin-side').width();
        if (sideWidth === 200) {
            $('#admin-body').animate({
                left: '0'
            }); //admin-footer
            $('#admin-footer').animate({
                left: '0'
            });
            $('#admin-side').animate({
                width: '0'
            });
        } else {
            $('#admin-body').animate({
                left: '200px'
            });
            $('#admin-footer').animate({
                left: '200px'
            });
            $('#admin-side').animate({
                width: '200px'
            });
        }
    });
    $('.admin-side-full').on('click', function () {
        var docElm = document.documentElement;
        //W3C  
        if (docElm.requestFullscreen) {
            docElm.requestFullscreen();
        }
        //FireFox  
        else if (docElm.mozRequestFullScreen) {
            docElm.mozRequestFullScreen();
        }
        //Chrome绛�  
        else if (docElm.webkitRequestFullScreen) {
            docElm.webkitRequestFullScreen();
        }
        //IE11
        else if (elem.msRequestFullscreen) {
            elem.msRequestFullscreen();
        }
        layer.msg('鎸塃sc鍗冲彲閫€鍑哄叏灞�');
    });

    $('#setting').on('click', function () {
        tab.tabAdd({
            href: '/Manage/Account/Setting/',
            icon: 'fa-gear',
            title: '璁剧疆'
        });
    });

    //閿佸睆
    $(document).on('keydown', function () {
        var e = window.event;
        if (e.keyCode === 76 && e.altKey) {
            //alert("浣犳寜涓嬩簡alt+l");
            lock($, layer);
        }
    });
    $('#lock').on('click', function () {
        lock($, layer);
    });

    //鎵嬫満璁惧鐨勭畝鍗曢€傞厤
    var treeMobile = $('.site-tree-mobile'),
        shadeMobile = $('.site-mobile-shade');
    treeMobile.on('click', function () {
        $('body').addClass('site-mobile');
    });
    shadeMobile.on('click', function () {
        $('body').removeClass('site-mobile');
    });
});

var isShowLock = false;
function lock($, layer) {
    if (isShowLock)
        return;
    //鑷畾椤�
    layer.open({
        title: false,
        type: 1,
        closeBtn: 0,
        anim: 6,
        content: $('#lock-temp').html(),
        shade: [0.9, '#393D49'],
        success: function (layero, lockIndex) {
            isShowLock = true;
            //缁欐樉绀虹敤鎴峰悕璧嬪€�
            //layero.find('div#lockUserName').text('admin');
            //layero.find('input[name=username]').val('admin');
            layero.find('input[name=password]').on('focus', function () {
                var $this = $(this);
                if ($this.val() === '杈撳叆瀵嗙爜瑙ｉ攣..') {
                    $this.val('').attr('type', 'password');
                }
            })
                .on('blur', function () {
                    var $this = $(this);
                    if ($this.val() === '' || $this.length === 0) {
                        $this.attr('type', 'text').val('杈撳叆瀵嗙爜瑙ｉ攣..');
                    }
                });
            //鍦ㄦ澶勫彲浠ュ啓涓€涓姹傚埌鏈嶅姟绔垹闄ょ浉鍏宠韩浠借璇侊紝鍥犱负鑰冭檻鍒板鏋滄祻瑙堝櫒琚己鍒跺埛鏂扮殑鏃跺€欙紝韬唤楠岃瘉杩樺瓨鍦ㄧ殑鎯呭喌			
            //do something...
            //e.g. 

            $.getJSON('/Account/Logout', null, function (res) {
                if (!res.rel) {
                    layer.msg(res.msg);
                }
            }, 'json');

            //缁戝畾瑙ｉ攣鎸夐挳鐨勭偣鍑讳簨浠�
            layero.find('button#unlock').on('click', function () {
                var $lockBox = $('div#lock-box');

                var userName = $lockBox.find('input[name=username]').val();
                var pwd = $lockBox.find('input[name=password]').val();
                if (pwd === '杈撳叆瀵嗙爜瑙ｉ攣..' || pwd.length === 0) {
                    layer.msg('璇疯緭鍏ュ瘑鐮�..', {
                        icon: 2,
                        time: 1000
                    });
                    return;
                }
                unlock(userName, pwd);
            });
			/**
			 * 瑙ｉ攣鎿嶄綔鏂规硶
			 * @param {String} 鐢ㄦ埛鍚�
			 * @param {String} 瀵嗙爜
			 */
            var unlock = function (un, pwd) {
                console.log(un, pwd);
                //杩欓噷鍙互浣跨敤ajax鏂规硶瑙ｉ攣
                $.post('/Account/UnLock', { userName: un, password: pwd }, function (res) {
                    //楠岃瘉鎴愬姛
                    if (res.rel) {
                        //鍏抽棴閿佸睆灞�
                        layer.close(lockIndex);
                        isShowLock = false;
                    } else {
                        layer.msg(res.msg, { icon: 2, time: 1000 });
                    }
                }, 'json');
                //isShowLock = false;
                //婕旂ず锛氶粯璁よ緭鍏ュ瘑鐮侀兘绠楁垚鍔�
                //鍏抽棴閿佸睆灞�
                //layer.close(lockIndex);
            };
        }
    });
};