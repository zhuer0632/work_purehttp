<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta content="IE=EmulateIE7" http-equiv="X-UA-Compatible">
    <title>视频云 - 后台管理中心</title>
    <script src="/statics/js/jquery-1.8.3.min.js" type="text/javascript" language="javascript"></script>
    <script src="/statics/js/art/jquery.artDialog.js?skin=blue" type="text/javascript" language="javascript"></script>
    <script src="/statics/js/art/iframeTools.js" type="text/javascript" language="javascript"></script>
    <script>
        //弹出子页面
        function opendiv()
        {
            art.dialog.open(
                    "/art/sub_page",
                    {
//                        lock: false,
                        background: 'gray', //背景颜色
                        opacity: 0.4,	//淡化背景颜色
                        width: '500px',
                        height: '350px',
//                        drag: true,
                        title: "显示的子页面标题头",
                        resize: true,
                        fixed: false
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