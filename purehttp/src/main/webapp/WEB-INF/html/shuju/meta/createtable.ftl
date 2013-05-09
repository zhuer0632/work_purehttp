<#include "../../header.ftl">


<div class="pad-10">
    <div class="content-menu ib-a blue line-x">
        <a onclick="javascript:openwinx('/shuju/meta/showpage_createtable/?','')" href="javascript:;" class="add fb"><em>创建表</em></a>&#12288;
        <a class="on" href="?m=content&amp;c=content&amp;a=init&amp;catid=8&amp;pc_hash=9Kdmp0"><em>---</em></a><span>|</span>
    </div>
    <form method="post" action="?m=content&amp;c=content&amp;a=delete&amp;dosubmit=1&amp;catid=8&amp;steps=0" id="myform" name="myform">
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
                    <td align="center"><input type="checkbox" value="1" name="ids[]" class="inputcheckbox "></td>
                    <td align="center"><input type="text" class="input-text-c input-text" value="0" size="3" name="listorders[1]"></td>
                    <td align="center">1</td>
                    <td>
                        <a target="_blank" href="http://phpcms.com/index.php?m=content&amp;c=index&amp;a=show&amp;catid=8&amp;id=1"><span style="">ddd</span></a> <img title="缩略图" src="http://phpcms.com/statics/images/icon/small_img.gif"></td>
                    <td align="center" title="今日点击：0
昨日点击：
本周点击：0
本月点击：0">0
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
                <input type="hidden" name="pc_hash" value="9Kdmp0">
                <input type="button" onclick="myform.action='?m=content&amp;c=content&amp;a=listorder&amp;dosubmit=1&amp;catid=8&amp;steps=0';myform.submit();" value="排序" class="button">
                <input type="button" onclick="myform.action='?m=content&amp;c=content&amp;a=delete&amp;dosubmit=1&amp;catid=8&amp;steps=0';return confirm_delete()" value="删除" class="button">
                <input type="button" onclick="push();" value="推送" class="button">
                <input type="button" onclick="myform.action='?m=content&amp;c=content&amp;a=remove&amp;catid=8';myform.submit();" value="批量移动" class="button">
            </div>
            <div id="pages"></div>
        </div>
    </form>
</div>
<script src="/statics/js/jquery-1.8.3.min.js"></script>
<#--<script src="/statics/js/json2.js"></script>-->
<script>
    $(function ()
    {
        getlist();
    });

    function getlist()
    {
        $.getJSON("/shuju/meta/createtable/list_tables", function (data)
        {
            var s =  JSON.stringify(data);
            $("#pages").append(s);
        });
    }

    function refersh_window()
    {
//        var refersh_time = getcookie('refersh_time');
//        if(refersh_time==1) {
//            window.location.reload();
//        }
        window.location.reload();
    }
    setInterval("refersh_window()", 3000);
</script>

</body>
</html>