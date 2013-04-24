<#assign path="${request.getContextPath()}">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="off">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>视频云 - 后台管理中心</title>
    <link href="http://phpcms.com/statics/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="http://phpcms.com/statics/css/zh-cn-system.css" rel="stylesheet" type="text/css" />
    <link href="http://phpcms.com/statics/css/dialog.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="http://phpcms.com/statics/css/style/zh-cn-styles1.css" title="styles1" media="screen" />
    <link rel="alternate stylesheet" type="text/css" href="http://phpcms.com/statics/css/style/zh-cn-styles2.css" title="styles2" media="screen" />
    <link rel="alternate stylesheet" type="text/css" href="http://phpcms.com/statics/css/style/zh-cn-styles3.css" title="styles3" media="screen" />
    <link rel="alternate stylesheet" type="text/css" href="http://phpcms.com/statics/css/style/zh-cn-styles4.css" title="styles4" media="screen" />
    <script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/jquery.min.js"></script>
    <script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/styleswitch.js"></script>
    <script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/dialog.js"></script>
    <script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/hotkeys.js"></script>
    <script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/jquery.sgallery.js"></script>
    <script type="text/javascript">
        var pc_hash = 'PHtSXt'
    </script>
    <style type="text/css">
        .objbody{overflow:hidden}
        .btns{background-color:#666;}
        .btns{position: absolute; top:116px; right:30px; z-index:1000; opacity:0.6;}
        .btns2{background-color:rgba(0,0,0,0.5); color:#fff; padding:2px; border-radius:3px; box-shadow:0px 0px 2px #333; padding:0px 6px; border:1px solid #ddd;}
        .btns:hover{opacity:1;}
        .btns h6{padding:4px; border-bottom:1px solid #666; text-shadow: 0px 0px 2px #000;}
        .btns .pd4{ padding-top:4px; border-top:1px solid #999;}
        .pd4 li{border-radius:0px 6spx 0px 6px; margin-top:2px; margin-bottom:3px; padding:2px 0px;}
        .btns .pd4 li span{padding:0px 6px;}
        .pd{padding:4px;}
        .ac{background-color:#333; color:#fff;}
        .hvs{background-color:#555; cursor: pointer;}
        .bg_btn{background: url(http://phpcms.com/statics/images/admin_img/icon2.jpg) no-repeat; width:32px; height:32px;}
    </style>
</head>
<body scroll="no" class="objbody">

<div id="dvLockScreen" class="ScreenLock" style="display:none">
    <div id="dvLockScreenWin" class="inputpwd">
        <h5><b class="ico ico-info"></b><span id="lock_tips">锁屏状态，请输入密码解锁</span></h5>
        <div class="input">
            <label class="lb">密码：</label>
            <input type="password" id="lock_password" class="input-text" size="24">
            <input type="submit" class="submit" value="&nbsp;" name="dosubmit" onclick="check_screenlock();return false;">
        </div></div>
</div>

<div class="header" style="width: auto;">
    <div class="logo lf">
        <a href="/">
            <span class="invisible"></span>
        </a>
    </div>
    <div class="rt-col">
        <div class="tab_style white cut_line text-r">
            <a onclick="lock_screen()" href="javascript:;">
                <img src="http://phpcms.com/statics/images/icon/lockscreen.png">
                锁屏
            </a>
            <span>|</span><a  href="http://127.0.0.1:8080/">视频云</a>
            <span>|</span><a  href="http://127.0.0.1:8080/">支持论坛</a>
            <span>|</span><a  href="http://127.0.0.1:8080/">帮助？</a>

            <ul id="Skin">
                <li rel="styles1" class="s1 styleswitch"></li>
                <li rel="styles2" class="s2 styleswitch"></li>
                <li rel="styles3" class="s3 styleswitch"></li>
                <li rel="styles4" class="s4 styleswitch"></li>
            </ul>
        </div>
    </div>
    <div class="col-auto">
        <div class="log white cut_line">您好！admin  [超级管理员]<span>|</span><a href="javascript:void(0);">[退出]</a><span>|</span>
            <a id="site_homepage" href="javascript:void(0);">站点首页</a><span>|</span>
            <a   href="javascript:void(0);">会员中心</a><span>|</span>
            <a id="site_search"  href="javascript:void(0);">搜索</a>
        </div>
        <ul id="top_menu" class="nav white">
            <li class="top_menu on" id="_M0" style="display: block;">
                <a style="outline:none;" hidefocus="true" href="javascript:_M(0,'menu/shuju')">数据</a>
            </li>
            <li class="top_menu" id="_M1" style="display: block;"><a style="outline:none;" hidefocus="true" href="javascript:_M(1,'menu/quanxian')">权限</a></li>
            <li class="top_menu" id="_M2" style="display: block;"><a style="outline:none;" hidefocus="true" href="javascript:_M(2,'menu/gongzuoliu')">工作流</a></li>
            <li class="top_menu" id="_M3" style="display: block;"><a style="outline:none;" hidefocus="true" href="javascript:_M(3,'menu/chajian')">插件</a></li>
        </ul>
    </div>
</div>

<div id="content" style="width: auto;">
    <div class="col-left left_menu">
        <div id="Scroll" style="height: 165px;">
            <div id="leftMain">

            </div>
        </div>
        <a title="展开与关闭" class="open" hidefocus="hidefocus" style="outline-style: none; outline-width: medium; height: 215px;" id="openClose" href="javascript:;"><span class="hidden">展开</span></a>
    </div>
    <div height="100%" style="display:none" id="display_center_id" class="col-1 lf cat-menu">
        <div class="content">
            <iframe width="100%" scrolling="auto" height="auto" frameborder="false" allowtransparency="true" style="border: medium none; height: 194px;" src="/indexmain" id="center_frame" name="center_frame"></iframe>
        </div>
    </div>
    <div class="col-auto mr8">
        <div class="crumbs">
            <div class="shortcut cu-span">
                <a target="right" href="javascript:void(0);"><span>更新缓存</span></a><a href="javascript:void(0);"><span>后台地图</span></a>
            </div>
            当前位置：
            <span id="current_pos">我的面板 &gt; 个人信息 &gt; 修改个人信息 &gt;
                <span id="current_pos_attr"></span>
            </span>
        </div>
        <div class="col-1">
            <div class="content" style="position:relative; overflow:hidden">
                <iframe name="right" id="rightMain" src="/indexmain" frameborder="false" scrolling="auto" style="border:none; margin-bottom:30px" width="100%" height="auto" allowtransparency="true"></iframe>
                <div class="fav-nav">
                    <div id="panellist">
                    </div>
                    <div id="paneladd"></div>
                    <input type="hidden" id="menuid" value="">
                    <input type="hidden" id="bigid" value="" />
                    <div id="help" class="fav-help"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="tab-web-panel hidden" style="position:absolute; z-index:999; background:#fff">
    <ul>
        <li style="margin:0"><a href="javascript:site_select(1, '默认站点', 'http://phpcms.com/', '1')">默认站点</a></li>
    </ul>
</div>

<div class="scroll">
    <a href="javascript:;" class="per" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(1);"></a>
    <a href="javascript:;" class="next" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(2);"></a>
</div>


<script type="text/javascript">
    if(!Array.prototype.map)
        Array.prototype.map = function(fn,scope) {
            var result = [],ri = 0;
            for (var i = 0,n = this.length; i < n; i++){
                if(i in this){
                    result[ri++]  = fn.call(scope ,this[i],i,this);
                }
            }
            return result;
        };

    var getWindowSize = function(){
        return ["Height","Width"].map(function(name){
            return window["inner"+name] ||
                    document.compatMode === "CSS1Compat" && document.documentElement[ "client" + name ] || document.body[ "client" + name ]
        });
    }

    window.onload = function (){

        if(!+"\v1" && !document.querySelector) { // for IE6 IE7
            document.body.onresize = resize;
        } else {
            window.onresize = resize;
        }
        function resize() {
            wSize();
            return false;
        }
    }

    function wSize(){
        //这是一字符串
        var str=getWindowSize();
        var strs= new Array(); //定义一数组
        strs=str.toString().split(","); //字符分割
        var heights = strs[0]-150,Body = $('body');$('#rightMain').height(heights);
        //iframe.height = strs[0]-46;
        if(strs[1]<980){
            $('.header').css('width',980+'px');
            $('#content').css('width',980+'px');
            Body.attr('scroll','');
            Body.removeClass('objbody');
        }else{
            $('.header').css('width','auto');
            $('#content').css('width','auto');
            Body.attr('scroll','no');
            Body.addClass('objbody');
        }

        var openClose = $("#rightMain").height()+39;
        $('#center_frame').height(openClose+9);
        $("#openClose").height(openClose+30);
        $("#Scroll").height(openClose-20);
        windowW();
    }
    wSize();
    function windowW(){
        if($('#Scroll').height()<$("#leftMain").height()){
            $(".scroll").show();
        }else{
            $(".scroll").hide();
        }
    }

    //左侧开关
    $("#openClose").click(function(){
        if($(this).data('clicknum')==1) {
            $("html").removeClass("on");
            $(".left_menu").removeClass("left_menu_on");
            $(this).removeClass("close");
            $(this).data('clicknum', 0);
            $(".scroll").show();
        } else {
            $(".left_menu").addClass("left_menu_on");
            $(this).addClass("close");
            $("html").addClass("on");
            $(this).data('clicknum', 1);
            $(".scroll").hide();
        }
        return false;
    });

    function _M(menuid,targetUrl) {
        $("#menuid").val(menuid);
        $("#bigid").val(menuid);
        $("#paneladd").html('<a class="panel-add" href="javascript:add_panel();"><em>添加</em></a>');
        $("#leftMain").load(targetUrl+"/?input=222", {limit: 25}, function()
        {
                windowW();
        });

        $('.top_menu').removeClass("on");
        $('#_M'+menuid).addClass("on");

        //当点击顶部菜单后，隐藏中间的框架
        $('#display_center_id').css('display','none');
        //显示左侧菜单，当点击顶部时，展开左侧
        $(".left_menu").removeClass("left_menu_on");
        $("#openClose").removeClass("close");
        $("html").removeClass("on");
        $("#openClose").data('clicknum', 0);
        $("#current_pos").data('clicknum', 1);
    }

    //显示右侧的详细内容
    function _MP(menuid,targetUrl) {
        $("#menuid").val(menuid);
        $("#paneladd").html('<a class="panel-add" href="javascript:add_panel();"><em>添加</em></a>');

        $("#rightMain").attr('src', targetUrl);
        $('.sub_menu').removeClass("on fb blue");
        $('#_MP'+menuid).addClass("on fb blue");

    }


    (function(){
        var addEvent = (function(){
                    if (window.addEventListener) {
                        return function(el, sType, fn, capture) {
                            el.addEventListener(sType, fn, (capture));
                        };
                    } else if (window.attachEvent) {
                        return function(el, sType, fn, capture) {
                            el.attachEvent("on" + sType, fn);
                        };
                    } else {
                        return function(){};
                    }
                })(),
                Scroll = document.getElementById('Scroll');
        // IE6/IE7/IE8/Opera 10+/Safari5+
        addEvent(Scroll, 'mousewheel', function(event){
            event = window.event || event ;
            if(event.wheelDelta <= 0 || event.detail > 0) {
                Scroll.scrollTop = Scroll.scrollTop + 29;
            } else {
                Scroll.scrollTop = Scroll.scrollTop - 29;
            }
        }, false);

        // Firefox 3.5+
        addEvent(Scroll, 'DOMMouseScroll',  function(event){
            event = window.event || event ;
            if(event.wheelDelta <= 0 || event.detail > 0) {
                Scroll.scrollTop = Scroll.scrollTop + 29;
            } else {
                Scroll.scrollTop = Scroll.scrollTop - 29;
            }
        }, false);


        //初始化第一个页面
        _M(0,'/init');

    })();

    function menuScroll(num){
        var Scroll = document.getElementById('Scroll');
        if(num==1){
            Scroll.scrollTop = Scroll.scrollTop - 60;
        }else{
            Scroll.scrollTop = Scroll.scrollTop + 60;
        }
    }

    //锁屏
    function lock_screen() {
        $.get("admin/index/public_lock_screen");
        $('#dvLockScreen').css('display','');
    }

    //解除锁屏
    function check_screenlock() {
        var lock_password = $('#lock_password').val();
        if(lock_password=='') {
            $('#lock_tips').html('<font color="red">密码不能为空。</font>');
            return false;
        }
        $.get("/admin/index/public_login_screenlock",function(data){
            if(data==1) {
                $('#dvLockScreen').css('display','none');
                $('#lock_password').val('');
                $('#lock_tips').html('锁屏状态，请输入密码解锁');
            } else if(data==3) {
                $('#lock_tips').html('<font color="red">密码重试次数太多</font>');
            } else {
                strings = data.split('|');
                $('#lock_tips').html('<font color="red">密码错误，您还有'+strings[1]+'次尝试机会！</font>');
            }
        });
    }

</script>
</body>
</html>


