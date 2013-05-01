<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="addbg">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=7"/>
    <title>phpcmsV9 - 后台管理中心</title>
    <link href="http://phpcms.com/statics/css/reset.css" rel="stylesheet" type="text/css"/>
    <link href="http://phpcms.com/statics/css/zh-cn-system.css" rel="stylesheet" type="text/css"/>
    <link href="http://phpcms.com/statics/css/table_form.css" rel="stylesheet" type="text/css"/>
    <link href="http://phpcms.com/statics/css/dialog.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/dialog.js"></script>
    <link rel="stylesheet" type="text/css" href="http://phpcms.com/statics/css/style/zh-cn-styles1.css" title="styles1" media="screen"/>
    <link rel="alternate stylesheet" type="text/css" href="http://phpcms.com/statics/css/style/zh-cn-styles2.css" title="styles2" media="screen"/>
    <link rel="alternate stylesheet" type="text/css" href="http://phpcms.com/statics/css/style/zh-cn-styles3.css" title="styles3" media="screen"/>
    <link rel="alternate stylesheet" type="text/css" href="http://phpcms.com/statics/css/style/zh-cn-styles4.css" title="styles4" media="screen"/>
    <script language="javascript" type="text/javascript" src="/statics/js/jquery-1.8.3.min.js"></script>
    <script language="javascript" type="text/javascript" src="/statics/js/admin_common.js"></script>
    <script language="javascript" type="text/javascript" src="/statics/js/common.js"></script>
    <script language="javascript" type="text/javascript" src="/statics/js/commons/Base64.js"></script>
    <script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/styleswitch.js"></script>
    <script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/formvalidator.js" charset="UTF-8"></script>
    <script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/formvalidatorregex.js" charset="UTF-8"></script>
    <script type="text/javascript">
        window.focus();
        var pc_hash = 'ku0ktr';
        window.onload = function ()
        {
            var html_a = document.getElementsByTagName('a');
            var num = html_a.length;
            for (var i = 0; i < num; i++)
            {
                var href = html_a[i].href;
                if (href && href.indexOf('javascript:') == -1)
                {
                    if (href.indexOf('?') != -1)
                    {
                        html_a[i].href = href + '&pc_hash=' + pc_hash;
                    }
                    else
                    {
                        html_a[i].href = href + '?pc_hash=' + pc_hash;
                    }
                }
            }

            var html_form = document.forms;
            var num = html_form.length;
            for (var i = 0; i < num; i++)
            {
                var newNode = document.createElement("input");
                newNode.name = 'pc_hash';
                newNode.type = 'hidden';
                newNode.value = pc_hash;
                html_form[i].appendChild(newNode);
            }
        }
    </script>
</head>
<body>
<style type="text/css">
    html
    {
        _overflow-y: scroll
    }
</style>
<script type="text/javascript">
    <!--
    var charset = 'utf-8';
    var uploadurl = 'http://phpcms.com/uploadfile/';
    //-->
</script>
<script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/content_addtop.js"></script>
<script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/colorpicker.js"></script>
<script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/hotkeys.js"></script>
<script language="javascript" type="text/javascript" src="http://phpcms.com/statics/js/cookie.js"></script>
<script type="text/javascript">var catid = 6</script>
<form name="myform" id="myform" action="/test/test/curd/do_add" method="post" enctype="multipart/form-data">
    <div class="addContent">
        <div class="crumbs">当前位置：内容 > 内容发布管理 > 添加内容</div>
        <div class="col-right">
            <div class="col-1">
                <div class="content pad-6">
                    <h6> 发布时间</h6>
                    <link rel="stylesheet" type="text/css" href="http://phpcms.com/statics/js/calendar/jscal2.css"/>
                    <link rel="stylesheet" type="text/css" href="http://phpcms.com/statics/js/calendar/border-radius.css"/>
                    <link rel="stylesheet" type="text/css" href="http://phpcms.com/statics/js/calendar/win2k.css"/>
                    <script type="text/javascript" src="http://phpcms.com/statics/js/calendar/calendar.js"></script>
                    <script type="text/javascript" src="http://phpcms.com/statics/js/calendar/lang/en.js"></script>
                    <input type="text" name="info[inputtime]" id="inputtime" value="2013-05-01 00:06:13" size="21" class="date" readonly>&nbsp;
                    <script type="text/javascript">
                        Calendar.setup({
                            weekNumbers: true,
                            inputField: "inputtime",
                            trigger: "inputtime",
                            dateFormat: "%Y-%m-%d %H:%M:%S",
                            showTime: true,
                            minuteStep: 1,
                            onSelect: function ()
                            {
                                this.hide();
                            }
                        });
                    </script>

                </div>
            </div>
        </div>
        <a title="展开与关闭" class="r-close" hidefocus="hidefocus" style="outline-style: none; outline-width: medium;" id="RopenClose" href="javascript:;"><span class="hidden">展开</span></a>

        <div class="col-auto">
            <div class="col-1">
                <div class="content pad-6">
                    <table width="100%" cellspacing="0" class="table_form">
                        <tbody>
                        <tr>
                            <th width="80"><font color="red">*</font> 栏目</th>
                            <td><input type="hidden" name="info[catid]" value="6">国内 <a href='javascript:;' onclick="omnipotent('selectid','?m=content&c=content&a=add_othors&siteid=1','同时发布到其他栏目',1);return false;" style='color:#B5BFBB'>[同时发布到其他栏目]</a>
                                <ul class='list-dot-othors' id='add_othors_text'></ul>
                            </td>
                        </tr>
                        <tr>
                            <th width="80"><font color="red">*</font> 标题</th>
                            <td>
                                <input type="text" style="width:400px;" name="info.title" id="title" value="" style="color:" class="measure-input " onBlur="$.post('api.php?op=get_keywords&number=3&sid='+Math.random()*5, {data:$('#title').val()}, function(data){if(data && $('#keywords').val()=='') {$('#keywords').val(data);
} })" onkeyup="strlen_verify(this, 'title_len', 80);"/><input type="hidden" name="style_color" id="style_color" value="">
                                <input type="hidden" name="style_font_weight" id="style_font_weight" value=""><input type="button" class="button" id="check_title_alt" value="检测重复" onclick="$.get('?m=content&c=content&a=public_check_title&catid=6&sid='+Math.random()*5, {data:$('#title').val()}, function(data){if(data=='1') {$('#check_title_alt').val('标题重复');$('#check_title_alt').css('background-color','#FFCC66');} else if(data=='0') {$('#check_title_alt').val('标题不重复');$('#check_title_alt').css('background-color','#F8FFE1')}})" style="width:73px;"/><img src="http://phpcms.com/statics/images/icon/colour.png" width="15" height="16" onclick="colorpicker('title_colorpanel','set_title_color');" style="cursor:hand"/>
                                <img src="http://phpcms.com/statics/images/icon/bold.png" width="10" height="10" onclick="input_font_bold()" style="cursor:hand"/> <span id="title_colorpanel" style="position:absolute;" class="colorpanel"></span>还可输入<B><span id="title_len">80</span></B> 个字符
                            </td>
                        </tr>

                        <tr>
                            <th width="80"><font color="red">*</font> 内容</th>
                            <td>
                                <div id='content_tip'></div>
                                <textarea name="info.content" id="content" boxid="content"></textarea>
                                <script type="text/javascript" src="http://phpcms.com/statics/js/ckeditor/ckeditor.js"></script>
                                <script type="text/javascript">
                                    CKEDITOR.replace('content', {height: 300, pages: true, subtitle: true, textareaid: 'content', module: 'content', catid: '6',
                                        flashupload: true, alowuploadexts: '', allowbrowser: '1', allowuploadnum: '10', authkey: '9b7b233e6fc9f7824fa920cb355190ee',
                                        filebrowserUploadUrl: 'http://phpcms.com/index.php?m=attachment&c=attachments&a=upload&module=content&catid=6&dosubmit=1',
                                        toolbar: [
                                            ['Source', '-', 'Templates'],
                                            ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Print'],
                                            ['Undo', 'Redo', '-', 'Find', 'Replace', '-', 'SelectAll', 'RemoveFormat'],
                                            ['ShowBlocks'],
                                            ['Image', 'Capture', 'Flash', 'MyVideo'],
                                            ['Maximize'],
                                            '/',
                                            ['Bold', 'Italic', 'Underline', 'Strike', '-'],
                                            ['Subscript', 'Superscript', '-'],
                                            ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', 'Blockquote'],
                                            ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
                                            ['Link', 'Unlink', 'Anchor'],
                                            ['Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak'],
                                            '/',
                                            ['Styles', 'Format', 'Font', 'FontSize'],
                                            ['TextColor', 'BGColor'],
                                            ['attachment']
                                        ]
                                    });
                                </script>
                                <div class='editor_bottom'>
                                    <script type="text/javascript" src="http://phpcms.com/statics/js/swfupload/swf2ckeditor.js"></script>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    </div>

    <div class="fixed-bottom">
        <div class="fixed-but text-c">
            <div class="button"><input value="保存后自动关闭" type="button" name="dosubmit" class="cu" style="width:145px;" onclick='refersh_window("dosubmit")'></div>
            <div class="button"><input value="保存并继续发表" type="button" name="dosubmit_continue" class="cu" style="width:130px;" title="Alt+X" onclick='refersh_window("dosubmit_continue")'></div>
            <div class="button"><input value="关闭(X)" type="button" name="close" onclick="close_window();" class="cu" style="width:70px;"></div>
        </div>
    </div>
</form>

</body>
</html>
<script type="text/javascript">
    <!--
    //只能放到最下面
    var openClose = $("#RopenClose"),
            rh = $(".addContent .col-auto").height(),
            colRight = $(".addContent .col-right"),
            valClose = getcookie('openClose');
    $(function ()
    {
        if (valClose == 1)
        {
            colRight.hide();
            openClose.addClass("r-open");
            openClose.removeClass("r-close");
        }
        else
        {
            colRight.show();
        }
        openClose.height(rh);
        $.formValidator.initConfig({formid: "myform", autotip: true, onerror: function (msg, obj)
        {
            window.top.art.dialog({id: 'check_content_id', content: msg, lock: true, width: '200', height: '50'}, function ()
            {
                $(obj).focus();
                boxid = $(obj).attr('id');
                if ($('#' + boxid).attr('boxid') != undefined)
                {
                    check_content(boxid);
                }
            })
        }});

        $("#title").formValidator({onshow: "", onfocus: "请输入标题"}).inputValidator({min: 1, max: 80, onerror: "标题不能为空"});
        $("#content").formValidator({onshow: "", onfocus: "内容不能为空"}).functionValidator({
            fun: function (val, elem)
            {
                var oEditor = CKEDITOR.instances.content;
                var data = oEditor.getData();
                if ($('#islink').attr('checked'))
                {
                    return true;
                }
                else if (($('#islink').attr('checked') == false) && (data == ''))
                {
                    return "内容不能为空";
                }
                else if (data == '' || $.trim(data) == '')
                {
                    return "内容不能为空";
                }
                return true;
            }
        });
        /*
         * 加载禁用外边链接
         */

        $('#linkurl').attr('disabled', true);
        $('#islink').attr('checked', false);
        $('.edit_content').hide();
        jQuery(document).bind('keydown', 'Alt+x', function ()
        {
            close_window();
        });


    });
    document.title = '添加内容';
    self.moveTo(-4, -4);
    function refersh_window(type)
    {

//        setcookie('refersh_time', 1);

//        $.post("/test/test/curd/do_add", { name: "John", time: "2pm" },
//                function(data){
//                    alert("Data Loaded: " + data);
//                });


        $.post("/test/test/curd/do_add", {title:"aaa" ,content: "bbbb" }, function (data)
        {
            //执行成功后
            if (type == "dosubmit")//保存后自动关闭
            {
                var base64=new Base64();
                var data = ReplaceBase64(base64.encode("保存成功"));//msg,type,href
                var href = base64.encode("");//msg,type,href
                var args = "type=close&data=" + data + "&href=" + href + "";
                redirect("/test/test/curd/showmessage/?" + args);
            }

            //保存后继续
            else
            {
                var base64=new Base64();
                var data = ReplaceBase64(base64.encode("保存成功"));//msg,type,href
                var href = ReplaceBase64(base64.encode("/test/test/curd/show_add"));//msg,type,href
                var args = "type=continue&data=" + data + "&href=" + href + "";
                redirect("/test/test/curd/showmessage/?" + args);

            }

        });


    }

    openClose.click
    (
            function ()
            {
                if (colRight.css("display") == "none")
                {
                    setcookie('openClose', 0, 1);
                    openClose.addClass("r-close");
                    openClose.removeClass("r-open");
                    colRight.show();
                }
                else
                {
                    openClose.addClass("r-open");
                    openClose.removeClass("r-close");
                    colRight.hide();
                    setcookie('openClose', 1, 1);
                }
            }
    )
    //-->
</script>