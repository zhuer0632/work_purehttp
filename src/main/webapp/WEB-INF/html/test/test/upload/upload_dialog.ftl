<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta content="IE=7" http-equiv="X-UA-Compatible">
    <title>phpcmsV9 - 后台管理中心</title>
    <link type="text/css" rel="stylesheet" href="http://phpcms.com/statics/css/reset.css">
    <link type="text/css" rel="stylesheet" href="http://phpcms.com/statics/css/zh-cn-system.css">
    <link type="text/css" rel="stylesheet" href="http://phpcms.com/statics/css/table_form.css">
    <link media="screen" title="styles1" href="http://phpcms.com/statics/css/style/zh-cn-styles1.css" type="text/css"
          rel="stylesheet">
    <link media="screen" title="styles2" href="http://phpcms.com/statics/css/style/zh-cn-styles2.css" type="text/css"
          rel="alternate stylesheet">
    <link media="screen" title="styles3" href="http://phpcms.com/statics/css/style/zh-cn-styles3.css" type="text/css"
          rel="alternate stylesheet">
    <link media="screen" title="styles4" href="http://phpcms.com/statics/css/style/zh-cn-styles4.css" type="text/css"
          rel="alternate stylesheet">
    <script src="http://phpcms.com/statics/js/jquery.min.js" type="text/javascript" language="javascript"></script>
    <script src="http://phpcms.com/statics/js/admin_common.js" type="text/javascript" language="javascript"></script>
    <script src="http://phpcms.com/statics/js/styleswitch.js" type="text/javascript" language="javascript"></script>
    <script charset="UTF-8" src="http://phpcms.com/statics/js/formvalidator.js" type="text/javascript"
            language="javascript"></script>
    <script charset="UTF-8" src="http://phpcms.com/statics/js/formvalidatorregex.js" type="text/javascript"
            language="javascript"></script>
    <style type="text/css">
        html {
            _overflow-y: scroll
        }
    </style>
    <link type="text/css" rel="stylesheet" href="http://phpcms.com/statics/js/swfupload/swfupload.css">
    <script src="/statics/js/swfupload/swfupload.js" type="text/javascript" language="JavaScript"></script>
    <script src="/statics/js/swfupload/fileprogress.js" type="text/javascript" language="JavaScript"></script>
    <script src="/statics/js/swfupload/handlers.js" type="text/javascript" language="JavaScript"></script>
    <script type="text/javascript">
        var swfu = '';
        $(document).ready(function ()
        {
            swfu = new SWFUpload({
                flash_url: "/statics/js/swfupload/swfupload.swf?" + Math.random(),
                upload_url: "/file/upload",
                file_post_name: "Filedata",
                post_params: {"SWFUPLOADSESSID": "1366642979", "module": "", "catid": "", "userid": "1", "siteid": "1", "dosubmit": "1", "thumb_width": "0", "thumb_height": "0", "watermark_enable": "1", "filetype_post": "jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf", "swf_auth_key": "8cf1c61751463b76528af6592f3c224b", "isadmin": "1", "groupid": "8"},
                file_size_limit: "2048000",
                file_types: "*.jpg;*.jpeg;*.gif;*.bmp;*.png;*.doc;*.docx;*.xls;*.xlsx;*.ppt;*.pptx;*.pdf;*.txt;*.rar;*.zip;*.swf",
                file_types_description: "All Files",
                file_upload_limit: "10",
                custom_settings: {progressTarget: "fsUploadProgress", cancelButtonId: "btnCancel"},

                //此处总会调用一下;随便便写个不为404的地址
                button_image_url: "/",
                button_width: 75,
                button_height: 28,
                button_placeholder_id: "buttonPlaceHolder",
                button_text_style: "",
                button_text_top_padding: 3,
                button_text_left_padding: 12,
                button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
                button_cursor: SWFUpload.CURSOR.HAND,

                file_dialog_start_handler: fileDialogStart,
                file_queued_handler: fileQueued,
                file_queue_error_handler: fileQueueError,
                file_dialog_complete_handler: fileDialogComplete,
                upload_progress_handler: uploadProgress,
                upload_error_handler: uploadError,
                upload_success_handler: uploadSuccess,
                upload_complete_handler: uploadComplete
            });
        })</script>
</head>
<body>
<div class="pad-10">
    <div class="col-tab">
        <ul class="tabBut cu-li">
            <li onclick="SwapTab('swf','on','',5,1);" class="on" id="tab_swf_1">上传附件</li>
            <li onclick="SwapTab('swf','on','',5,2);" id="tab_swf_2">网络文件</li>
            <li onclick="SwapTab('swf','on','',5,3);set_iframe('album_list','');" id="tab_swf_3">图库</li>
            <li onclick="SwapTab('swf','on','',5,4);set_iframe('album_dir','');" id="tab_swf_4">目录浏览</li>
        </ul>
        <div class="content pad-10 " id="div_swf_1">
            <div>
                <div id="addnew" class="addnew">
                    <span id="buttonPlaceHolder"></span>
                </div>
                <input type="button" onclick="swfu.startUpload();" value="开始上传" id="btupload">

                <div class="onShow" id="nameTip">最多上传<font color="red"> 10</font> 个附件,单文件最大 <font color="red">2
                    MB</font></div>
                <div class="bk3"></div>

                <div class="lh24">支持 <font style="font-family: Arial, Helvetica, sans-serif">jpg、jpeg、gif、bmp、png、doc、docx、xls、xlsx、ppt、pptx、pdf、txt、rar、zip、swf</font>
                    格式。
                </div>
                <input type="checkbox" onclick="change_params()" checked="" value="1" id="watermark_enable"> 是否添加水印
            </div>
            <div class="bk10"></div>
            <fieldset id="swfupload" class="blue pad-10">
                <legend>列表</legend>
                <ul id="fsUploadProgress" class="attachment-list">
                </ul>
            </fieldset>
        </div>
        <div class="contentList pad-10 hidden" id="div_swf_2">
            <div class="bk10"></div>
            请输入网络地址
            <div class="bk3"></div>
            <input type="text" onblur="addonlinefile(this)" style="width:350px;" value="" class="input-text"
                   name="info[filename]">

            <div class="bk10"></div>
        </div>
        <div class="contentList pad-10 hidden" id="div_swf_3">
            <ul class="attachment-list">
            </ul>
        </div>
        <div class="contentList pad-10 hidden" id="div_swf_4">
            <ul class="attachment-list">
            </ul>
        </div>

        <div class="hidden" id="att-status"></div>
        <div class="hidden" id="att-status-del"></div>
        <div class="hidden" id="att-name"></div>
        <!-- swf -->
    </div>

    <script type="text/javascript">
        //        if ($.browser.mozilla) {
        //            window.onload=function(){
        //                if (location.href.indexOf("&rand=")<0) {
        //                    location.href=location.href+"&rand="+Math.random();
        //                }
        //            }
        //        }
        function imgWrap(obj)
        {
            $(obj).hasClass('on') ? $(obj).removeClass("on") : $(obj).addClass("on");
        }

        function SwapTab(name, cls_show, cls_hide, cnt, cur)
        {
            for (i = 1; i <= cnt; i++)
            {
                if (i == cur)
                {
                    $('#div_' + name + '_' + i).show();
                    $('#tab_' + name + '_' + i).addClass(cls_show);
                    $('#tab_' + name + '_' + i).removeClass(cls_hide);
                } else
                {
                    $('#div_' + name + '_' + i).hide();
                    $('#tab_' + name + '_' + i).removeClass(cls_show);
                    $('#tab_' + name + '_' + i).addClass(cls_hide);
                }
            }
        }

        function addonlinefile(obj)
        {
            var strs = $(obj).val() ? '|' + $(obj).val() : '';
            $('#att-status').html(strs);
        }

        function change_params()
        {
            if ($('#watermark_enable').attr('checked'))
            {
                swfu.addPostParam('watermark_enable', '1');
            } else
            {
                swfu.removePostParam('watermark_enable');
            }
        }
        function set_iframe(id, src)
        {
            $("#" + id).attr("src", src);
        }
        function album_cancel(obj, id, source)
        {
            var src = $(obj).children("img").attr("path");
            var filename = $(obj).attr('title');
            if ($(obj).hasClass('on'))
            {
                $(obj).removeClass("on");
                var imgstr = $("#att-status").html();
                var length = $("a[class='on']").children("img").length;
                var strs = filenames = '';
                $.get('index.php?m=attachment&c=attachments&a=swfupload_json_del&aid=' + id + '&src=' + source + '&filename=' + filename);
                for (var i = 0; i < length; i++)
                {
                    strs += '|' + $("a[class='on']").children("img").eq(i).attr('path');
                    filenames += '|' + $("a[class='on']").children("img").eq(i).attr('title');
                }
                $('#att-status').html(strs);
                $('#att-status').html(filenames);
            } else
            {
                var num = $('#att-status').html().split('|').length;
                var file_upload_limit = '10';
                if (num > file_upload_limit)
                {
                    alert('不能选择超过' + file_upload_limit + '个附件');
                    return false;
                }
                $(obj).addClass("on");
                $.get('index.php?m=attachment&c=attachments&a=swfupload_json&aid=' + id + '&src=' + source + '&filename=' + filename);
                $('#att-status').append('|' + src);
                $('#att-name').append('|' + filename);
            }
        }
    </script>

</div>
</body>
</html>