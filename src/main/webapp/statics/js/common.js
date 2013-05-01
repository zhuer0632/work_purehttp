/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 13-5-1
 * Time: 下午1:04
 * To change this template use File | Settings | File Templates.
 */


/**
 *  替换base64中的特殊字符
 *  "+" --> "-"  和  "/"  --> "_"
 */

window.ReplaceBase64 = function (base64)
{
    var regS = new RegExp("\\+", "gi");
    var regS2 = new RegExp("/", "gi");
    var s = base64.replace(regS, "-"); // 全部替换
    s = s.replace(regS2, "_"); // 全部替换
    return s;
}


// 把多行数据，绑定到一个表格上
function bindTrInTable(tbObj, trStr)
{
    $(tbObj).find("tr").last().after(trStr);
}

// 清空表格中的所有行
function clearTableTr(tbObj)
{

    $(tbObj).find("tr").each(function(index,e)
    {
        if(index>0)
        {
                $(e).remove();
        }
    });

}

// 判断字符串中是否含有某个字串
function hasStr(strSrc, subStr)
{
    if (is.String(strSrc) && strSrc != null && strSrc != undefined)
    {
        var i = strSrc.toString().indexOf(subStr)
        if (i >= 0)
        {
            return true;
        }
    }
    return false;
}


/**
 * 弹出错误提示,并且3秒钟后消失,并且指定的文本框的背景高亮快闪。
 */
function setMsg(str_type, str_Name, str_errMsg)
{
    // div[class='msgbox']->span[class='errmsg'] 设置内容为str_errMsg，然后这个对象三秒钟内消失。
    var msgspan = $("span[class='errmsg']");
    $(msgspan).html(str_errMsg);

    var msgbox = $("div[class='msgbox']");
    // $(msgbox).css("visibility","visible");
    $(msgbox).slideDown("slow");

    //setTimeout(callLater(showmsg, msgbox), 3000);
    $(".errclose").bind("click", function ()
    {
        $(".msgbox").slideUp("slow");
    });

    // 高亮文本框
    if (str_type == undefined || str_type == "")
    {
        return;
    }

    setheighLight(str_type, str_Name);
    setTimeout(callLaterSetheighLight(removeheighLight, str_type, str_Name), 6000);// 立刻回到顶部,这个时候用户看完顶部提示，再下来看具体位置[多出两秒钟的时间来定为]
    $("" + str_type + "[name='" + str_Name + "']").focus();
    $('html,body').animate({
        scrollTop: 0
    }, 'fast');
}

function callLater(fRef, argu1)
{
    return (function ()
    {
        fRef(argu1);
    });
};

function showmsg(msgbox)
{
    $(msgbox).slideUp("slow");
    // $(msgbox).css("visibility","hidden");
}

