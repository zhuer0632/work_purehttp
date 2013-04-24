<html>
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta content="IE=EmulateIE7" http-equiv="X-UA-Compatible">
    <title>视频云 - 后台管理中心</title>
    <script src="/statics/js/jquery-1.8.3.min.js" type="text/javascript" language="javascript"></script>
    <script src="/statics/js/art/jquery.artDialog.js?skin=chrome" type="text/javascript" language="javascript"></script>
    <script src="/statics/js/art/plugins/iframeTools.js" type="text/javascript" language="javascript"></script>
    <script>
        //弹出子页面
        function opendiv()
        {
            art.dialog.open(
                    "/art/sub_page",
                    {
                        lock: true,
                        background: 'gray', //背景颜色
                        opacity: 0.4,	//淡化背景颜色
                        width: '500px',
                        height: '350px',
                        drag: true,
                        title: "显示的子页面标题头",
                        resize: true,
                        fixed: true
                    }
            );
        }
    </script>
</head>
<body>


<div>测试页面</div>

<div>

    <br/>

    <a href="javascript:opendiv();">弹出子页面</a>

</div>


</body>
</html>