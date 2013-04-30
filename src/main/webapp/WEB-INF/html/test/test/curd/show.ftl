<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta content="IE=7" http-equiv="X-UA-Compatible">
    <title>phpcmsV9 - 后台管理中心</title>
    <link type="text/css" rel="stylesheet" href="http://phpcms.com/statics/css/reset.css">
    <link type="text/css" rel="stylesheet" href="http://phpcms.com/statics/css/zh-cn-system.css">
    <link type="text/css" rel="stylesheet" href="http://phpcms.com/statics/css/table_form.css">
    <link type="text/css" rel="stylesheet" href="http://phpcms.com/statics/css/dialog.css">
    <script src="http://phpcms.com/statics/js/dialog.js" type="text/javascript" language="javascript"></script>
    <link media="screen" title="styles1" href="http://phpcms.com/statics/css/style/zh-cn-styles1.css" type="text/css" rel="stylesheet">
    <link media="screen" title="styles2" href="http://phpcms.com/statics/css/style/zh-cn-styles2.css" type="text/css" rel="alternate stylesheet">
    <link media="screen" title="styles3" href="http://phpcms.com/statics/css/style/zh-cn-styles3.css" type="text/css" rel="alternate stylesheet">
    <link media="screen" title="styles4" href="http://phpcms.com/statics/css/style/zh-cn-styles4.css" type="text/css" rel="alternate stylesheet">
    <script src="http://phpcms.com/statics/js/jquery.min.js" type="text/javascript" language="javascript"></script>
    <script src="http://phpcms.com/statics/js/admin_common.js" type="text/javascript" language="javascript"></script>
    <script src="http://phpcms.com/statics/js/styleswitch.js" type="text/javascript" language="javascript"></script>
    <script type="text/javascript">
        window.focus();
        var pc_hash = 'ku0ktr';
    </script>
</head>
<body>
<div style="display: none; position: absolute;" class="">
    <div class="aui_outer">
        <table class="aui_border">
            <tbody>
            <tr>
                <td class="aui_nw"></td>
                <td class="aui_n"></td>
                <td class="aui_ne"></td>
            </tr>
            <tr>
                <td class="aui_w"></td>
                <td class="aui_c">
                    <div class="aui_inner">
                        <table class="aui_dialog">
                            <tbody>
                            <tr>
                                <td class="aui_header" colspan="2">
                                    <div class="aui_titleBar">
                                        <div class="aui_title" style="cursor: move; display: block;"></div>
                                        <a href="javascript:/*artDialog*/;" class="aui_close" style="display: block;">×</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td class="aui_icon" style="display: none;">
                                    <div class="aui_iconBg" style="background: none repeat scroll 0% 0% transparent;"></div>
                                </td>
                                <td class="aui_main" style="width: auto; height: auto;">
                                    <div class="aui_content" style="padding: 20px 25px;"></div>
                                </td>
                            </tr>
                            <tr>
                                <td class="aui_footer" colspan="2">
                                    <div class="aui_buttons" style="display: none;"></div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </td>
                <td class="aui_e"></td>
            </tr>
            <tr>
                <td class="aui_sw"></td>
                <td class="aui_s"></td>
                <td class="aui_se" style="cursor: se-resize;"></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<style type="text/css">
    html
    {
        _overflow-y: scroll
    }
</style>
<div style="display:none" id="closeParentTime"></div>
<script language="JavaScript">
    <#--注释掉显示树的部分-->
//    if (window.top.$("#current_pos").data('clicknum') == 1 || window.top.$("#current_pos").data('clicknum') == null)
//    {
//        parent.document.getElementById('display_center_id').style.display = '';
//        parent.document.getElementById('center_frame').src = '?m=content&amp;c=content&amp;a=public_categorys&amp;type=add&amp;menuid=822&amp;pc_hash=ku0ktr';
//        window.top.$("#current_pos").data('clicknum', 0);
//    }
</script>
<div class="pad-10">
    <div class="content-menu ib-a blue line-x">
        <a onclick="javascript:openwinx('?m=content&amp;c=content&amp;a=add&amp;menuid=&amp;catid=8&amp;pc_hash=ku0ktr','')" href="javascript:;" class="add fb"><em>添加内容</em></a>&#12288;
        <a class="on" href="?m=content&amp;c=content&amp;a=init&amp;catid=8&amp;pc_hash=ku0ktr"><em>审核通过</em></a><span>|</span>
        <a onclick="javascript:$('#searchid').css('display','');" href="javascript:;"><em>搜索</em></a>
    </div>
    <div style="display:none" id="searchid">
        <form method="get" action="" name="searchform">
            <input type="hidden" name="m" value="content">
            <input type="hidden" name="c" value="content">
            <input type="hidden" name="a" value="init">
            <input type="hidden" name="catid" value="8">
            <input type="hidden" name="steps" value="0">
            <input type="hidden" name="search" value="1">
            <input type="hidden" name="pc_hash" value="ku0ktr">
            <table width="100%" cellspacing="0" class="search-form">
                <tbody>
                <tr>
                    <td>
                        <div class="explain-col">

                            添加时间：
                            <link href="http://phpcms.com/statics/js/calendar/jscal2.css" type="text/css" rel="stylesheet">
                            <link href="http://phpcms.com/statics/js/calendar/border-radius.css" type="text/css" rel="stylesheet">
                            <link href="http://phpcms.com/statics/js/calendar/win2k.css" type="text/css" rel="stylesheet">
                            <script src="http://phpcms.com/statics/js/calendar/calendar.js" type="text/javascript"></script>
                            <script src="http://phpcms.com/statics/js/calendar/lang/en.js" type="text/javascript"></script>
                            <input type="text" readonly="" class="date input-text" size="10" value="" id="start_time" name="start_time">&nbsp;
                            <script type="text/javascript">
                                Calendar.setup({
                                    weekNumbers: false,
                                    inputField: "start_time",
                                    trigger: "start_time",
                                    dateFormat: "%Y-%m-%d",
                                    showTime: false,
                                    minuteStep: 1,
                                    onSelect: function ()
                                    {
                                        this.hide();
                                    }
                                });
                            </script>
                            - &nbsp;<input type="text" readonly="" class="date input-text" size="10" value="" id="end_time" name="end_time">&nbsp;
                            <script type="text/javascript">
                                Calendar.setup({
                                    weekNumbers: false,
                                    inputField: "end_time",
                                    trigger: "end_time",
                                    dateFormat: "%Y-%m-%d",
                                    showTime: false,
                                    minuteStep: 1,
                                    onSelect: function ()
                                    {
                                        this.hide();
                                    }
                                });
                            </script>
                            <select name="posids">
                                <option selected="" value="">全部</option>
                                <option value="1">推荐</option>
                                <option value="2">不推荐</option>
                            </select>
                            <select name="searchtype">
                                <option selected="" value="0">标题</option>
                                <option value="1">简介</option>
                                <option value="2">用户名</option>
                                <option value="3">ID</option>
                            </select>

                            <input type="text" class="input-text" value="" name="keyword">
                            <input type="submit" value="搜索" class="button" name="search">
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
    <form method="post" action="" id="myform" name="myform">
        <div class="table-list">
            <table width="100%">
                <thead>
                <tr>
                    <th width="16"><input type="checkbox" onclick="selectall('ids[]');" id="check_box" value=""></th>
                    <th width="37">排序</th>
                    <th width="40">ID</th>
                    <th>标题</th>
                    <th width="40">点击量</th>
                    <th width="70">发布人</th>
                    <th width="118">更新时间</th>
                    <th width="72">管理操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td align="center"><input type="checkbox" value="2" name="ids[]" class="inputcheckbox "></td>
                    <td align="center"><input type="text" class="input-text-c input-text" value="0" size="3" name="listorders[2]"></td>
                    <td align="center">2</td>
                    <td>
                        <a target="_blank" href="http://phpcms.com/index.php?m=content&amp;c=index&amp;a=show&amp;catid=8&amp;id=2"><span style="">啊啊吧avav啊查询传销自残</span></a></td>
                    <td align="center" title="今日点击：0
昨日点击：
本周点击：0
本月点击：0">0
                    </td>
                    <td align="center">
                        admin
                    </td>
                    <td align="center">2013-04-30 19:12:05</td>
                    <td align="center"><a onclick="javascript:openwinx('?m=content&amp;c=content&amp;a=edit&amp;catid=8&amp;id=2','')" href="javascript:;">修改</a> | <a href="javascript:view_comment('content_8-2-1','啊啊吧avav啊查询传销自残')">评论</a></td>
                </tr>
                <tr>
                    <td align="center"><input type="checkbox" value="1" name="ids[]" class="inputcheckbox "></td>
                    <td align="center"><input type="text" class="input-text-c input-text" value="0" size="3" name="listorders[1]"></td>
                    <td align="center">1</td>
                    <td>
                        <a target="_blank" href="http://phpcms.com/index.php?m=content&amp;c=index&amp;a=show&amp;catid=8&amp;id=1"><span style="">ddd</span></a> <img title="缩略图" src="http://phpcms.com/statics/images/icon/small_img.gif"></td>
                    <td align="center" title="今日点击：1
昨日点击：
本周点击：1
本月点击：2">2
                    </td>
                    <td align="center">
                        admin
                    </td>
                    <td align="center">2013-04-21 01:17:53</td>
                    <td align="center"><a onclick="javascript:openwinx('?m=content&amp;c=content&amp;a=edit&amp;catid=8&amp;id=1','')" href="javascript:;">修改</a> | <a href="javascript:view_comment('content_8-1-1','ddd')">评论</a></td>
                </tr>
                </tbody>
            </table>
            <div class="btn"><label for="check_box">全选/取消</label>
                <input type="hidden" name="pc_hash" value="ku0ktr">
                <input type="button" onclick="myform.action='?m=content&amp;c=content&amp;a=listorder&amp;dosubmit=1&amp;catid=8&amp;steps=0';myform.submit();" value="排序" class="button">
                <input type="button" onclick="myform.action='?m=content&amp;c=content&amp;a=delete&amp;dosubmit=1&amp;catid=8&amp;steps=0';return confirm_delete()" value="删除" class="button">
                <input type="button" onclick="push();" value="推送" class="button">
                <input type="button" onclick="myform.action='?m=content&amp;c=content&amp;a=remove&amp;catid=8';myform.submit();" value="批量移动" class="button">
            </div>
            <div id="pages"></div>
        </div>
    </form>
</div>
<script src="http://phpcms.com/statics/js/cookie.js" type="text/javascript" language="javascript"></script>
<script type="text/javascript">
    function push()
    {
        var str = 0;
        var id = tag = '';
        $("input[name='ids[]']").each(function ()
        {
            if ($(this).attr('checked') == 'checked')
            {
                str = 1;
                id += tag + $(this).val();
                tag = '|';
            }
        });
        if (str == 0)
        {
            alert('您没有勾选信息');
            return false;
        }
        window.top.art.dialog({id: 'push'}).close();
        window.top.art.dialog({title: '推送：', id: 'push', iframe: '?m=content&amp;c=push&amp;action=position_list&amp;catid=8&amp;modelid=3&amp;id=' + id, width: '800', height: '500'}, function ()
        {
            var d = window.top.art.dialog({id: 'push'}).data.iframe;// 使用内置接口获取iframe对象
            var form = d.document.getElementById('dosubmit');
            form.click();
            return false;
        }, function ()
        {
            window.top.art.dialog({id: 'push'}).close()
        });
    }
    function confirm_delete()
    {
        if (confirm('确认删除吗？'))
        {
            $('#myform').submit();
        }
    }
    function view_comment(id, name)
    {
        window.top.art.dialog({id: 'view_comment'}).close();
        window.top.art.dialog({yesText: '关闭', title: '查看评论：' + name, id: 'view_comment', iframe: 'index.php?m=comment&amp;c=comment_admin&amp;a=lists&amp;show_center_id=1&amp;commentid=' + id, width: '800', height: '500'}, function ()
        {
            window.top.art.dialog({id: 'edit'}).close()
        });
    }
    function reject_check(type)
    {
        if (type == 1)
        {
            var str = 0;
            $("input[name='ids[]']").each(function ()
            {
                if ($(this).attr('checked') == 'checked')
                {
                    str = 1;
                }
            });
            if (str == 0)
            {
                alert('您没有勾选信息');
                return false;
            }
            document.getElementById('myform').action = '?m=content&amp;c=content&amp;a=pass&amp;catid=8&amp;steps=0&amp;reject=1';
            document.getElementById('myform').submit();
        }
        else
        {
            $('#reject_content').css('display', '');
            return false;
        }
    }
    setcookie('refersh_time', 0);
    function refersh_window()
    {
        var refersh_time = getcookie('refersh_time');
        if (refersh_time == 1)
        {
            window.location.reload();
        }
    }
    setInterval("refersh_window()", 3000);
</script>

</body>
</html>