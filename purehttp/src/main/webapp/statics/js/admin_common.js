function confirmurl(url, message)
{
    url = url + '&pc_hash=' + pc_hash;
    if (confirm(message))
    {
        redirect(url);
    }
}
function redirect(url)
{
    location.href = url;
}
//滚动条
$(function ()
{
    $(":text").addClass('input-text');
})

/**
 * 全选checkbox,注意：标识checkbox id固定为为check_box
 * @param string name 列表check名称,如 uid[]
 */
function selectall(name)
{
    if ($("#check_box").attr("checked") == 'checked')
    {
        $("input[name='" + name + "']").each(function ()
        {
            $(this).attr("checked", "checked");

        });
    }
    else
    {
        $("input[name='" + name + "']").each(function ()
        {
            $(this).removeAttr("checked");
        });
    }
}
function openwinx(url, name, w, h)
{
    if (!w)
    {
        w = screen.width - 4;
    }
    if (!h)
    {
        h = screen.height - 95;
    }
//	url = url+'/?pc_hash='+pc_hash;
    window.open(url, name, "top=100,left=400,width=" + w + ",height=" + h + ",toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no");
}


function artdialog(url, args, title, w, h)
{
    if (!w)
    {
        w = 700;
    }
    if (!h)
    {
        h = 500;
    }

    art.dialog.open(url + "?" + args,
            {
                lock: true,
                background: '#F2F2F2', // 背景色
                opacity: 0.4,    // 透明度
                width: w + 'px',
                height: h + 'px',
                drag: true,
                title: title,
                resize: true,
                fixed: true,
                ok: function () {
//                    this.title('3秒后自动关闭').time(3);
                    return formcheck();
                },
                cancelVal: '关闭',
                cancel: true //为true等价于function(){}
            });
}


//弹出对话框
function omnipotent(id, linkurl, title, close_type, w, h)
{
    if (!w)
    {
        w = 700;
    }
    if (!h)
    {
        h = 500;
    }
    art.dialog({id: id, iframe: linkurl, title: title, width: w, height: h, lock: true},
            function ()
            {
                if (close_type == 1)
                {
                    art.dialog({id: id}).close()
                }
                else
                {
                    var d = art.dialog({id: id}).data.iframe;
                    var form = d.document.getElementById('dosubmit');
                    form.click();
                }
                return false;
            },
            function ()
            {
                art.dialog({id: id}).close()
            });
    void(0);
}

function time()
{
    var d = new Date();
    return d.getTime();
}

function timer(fun, second)
{
    setTimeout(fun, second);
}

function fortimer(fun, second)
{
    setInterval(fun, second);
}

/**
 *  输入Date.getTime(),返回 yyyy-MM-dd HH:mm:ss
 */
function getTimeString(millisecond)
{
    var d = new Date();
    d.setTime(millisecond);
    return getDateTimeString(d);
}

/**
 *  返回 yyyy-MM-dd HH:mm:ss
 */
function getDateTimeString(date)
{   //如：
    var year = date.getFullYear();
    var month = date.getMonth();
    var day = date.getDate();
    month = month + 1;
    if (month < 10)
    {
        month = '0' + month;
    }
    if (day < 10)
    {
        day = '0' + day;
    }
    var hour = date.getHours();
    if (hour < 10)
    {
        hour = '0' + hour;
    }
    var minute = date.getMinutes();
    if (minute < 10)
    {
        minute = '0' + minute;
    }
    var second = date.getSeconds();
    if (second < 10)
    {
        second = '0' + second;
    }
    var str = year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;
    return str;
}

