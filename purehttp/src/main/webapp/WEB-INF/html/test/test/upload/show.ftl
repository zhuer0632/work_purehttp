<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>上传管理</title>
    <script src="/statics/js/jquery-1.8.3.min.js" type="text/javascript" language="javascript"></script>
    <script src="/statics/js/art/jquery.artDialog.js?skin=blue" type="text/javascript" language="javascript"></script>
    <script src="/statics/js/art/iframeTools.js" type="text/javascript" language="javascript"></script>

    <script>
        function flashupload(uploadid,name)
        {
            art.dialog.open('/test/test/upload/upload_dialog',
                    {
                        lock: true,
                        background: '#F2F2F2', // 背景色
                        opacity: 0.4,    // 透明度
                        width: '500px',
                        height: '420px',
                        drag: true,
                        title:'上传',
                        resize:false,
                        fixed:true
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