<html>
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta content="IE=EmulateIE7" http-equiv="X-UA-Compatible">
    <title>视频云 - 后台管理中心</title>
    <link type="text/css" rel="stylesheet" href="http://phpcms.com/statics/css/reset.css">
    <link type="text/css" rel="stylesheet" href="http://phpcms.com/statics/css/zh-cn-system.css">
    <link type="text/css" rel="stylesheet" href="http://phpcms.com/statics/css/dialog.css">
    <link media="screen" title="styles1" href="http://phpcms.com/statics/css/style/zh-cn-styles1.css" type="text/css" rel="stylesheet">
    <link media="screen" title="styles2" href="http://phpcms.com/statics/css/style/zh-cn-styles2.css" type="text/css" rel="alternate stylesheet">
    <link media="screen" title="styles3" href="http://phpcms.com/statics/css/style/zh-cn-styles3.css" type="text/css" rel="alternate stylesheet">
    <link media="screen" title="styles4" href="http://phpcms.com/statics/css/style/zh-cn-styles4.css" type="text/css" rel="alternate stylesheet">
    <script src="http://phpcms.com/statics/js/jquery.min.js" type="text/javascript" language="javascript"></script>
    <script src="http://phpcms.com/statics/js/styleswitch.js" type="text/javascript" language="javascript"></script>
    <script src="/statics/js/dialog.js" type="text/javascript" language="javascript"></script>
    <script src="http://phpcms.com/statics/js/hotkeys.js" type="text/javascript" language="javascript"></script>
    <script src="http://phpcms.com/statics/js/jquery.sgallery.js" type="text/javascript" language="javascript"></script>
    <script type="text/javascript">
        var pc_hash = 'RcsLIv'
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


    <script>
        function flashupload(uploadid,name)
        {
            window.top.art.dialog({title: name, id: uploadid, iframe: '/test/test/upload/upload_dialog', width: '500', height: '420'},
                    function () {
            }, function () {
                window.top.art.dialog({id: uploadid}).close()
            });
        }
    </script>
</head>
<body>


<div>测试页面---完善的上传控件</div>

<div>

    <a onclick="flashupload('content','上传附件');return false;" href="javascript:void(0);">附件上传</a>

</div>


</body>
</html>