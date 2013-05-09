<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta content="IE=7" http-equiv="X-UA-Compatible">
    <title>提示信息</title>
    <style type="text/css">
        *
        {
            padding: 0;
            margin: 0;
            font-size: 12px
        }

        a:link, a:visited
        {
            text-decoration: none;
            color: #0068a6
        }

        a:hover, a:active
        {
            color: #ff6600;
            text-decoration: underline
        }

        .showMsg
        {
            border: 1px solid #1e64c8;
            zoom: 1;
            width: 450px;
            height: 172px;
            position: absolute;
            top: 44%;
            left: 50%;
            margin: -87px 0 0 -225px
        }

        .showMsg h5
        {
            background-image: url(http://phpcms.com/statics/images/msg_img/msg.png);
            background-repeat: no-repeat;
            color: #fff;
            padding-left: 35px;
            height: 25px;
            line-height: 26px;
            *line-height: 28px;
            overflow: hidden;
            font-size: 14px;
            text-align: left
        }

        .showMsg .content
        {
            padding: 46px 12px 10px 45px;
            font-size: 14px;
            height: 64px;
            text-align: left
        }

        .showMsg .bottom
        {
            background: #e4ecf7;
            margin: 0 1px 1px 1px;
            line-height: 26px;
            *line-height: 30px;
            height: 26px;
            text-align: center
        }

        .showMsg .ok, .showMsg .guery
        {
            background: url(http://phpcms.com/statics/images/msg_img/msg_bg.png) no-repeat 0px -560px;
        }

        .showMsg .guery
        {
            background-position: left -460px;
        }
    </style>
    <script src="http://phpcms.com/statics/js/jquery.min.js" type="text/javaScript"></script>
    <script src="http://phpcms.com/statics/js/admin_common.js" language="JavaScript"></script>
</head>
<body>
<div style="text-align:center" class="showMsg">
    <h5>提示信息</h5>

    <div style="display:inline-block;display:-moz-inline-stack;zoom:1;*display:inline;max-width:330px" class="content guery">
    ${data}
    <font color="red"><b><span id="secondid">2</span></b> 秒后自动
    <#if type=="close">
     关闭
     </#if>
    <#if type=="continue">
     跳转
    </#if>
    </font>
    <script>function set_time() {$("#secondid").html(1);}setTimeout("set_time()", 500);</script>

    </div>
    <div class="bottom">


    <#if  type=="continue">
    <#--跳转到指定页面-->
    <a href="${href}">如果您的浏览器没有自动跳转，请点击这里</a>
   <script language="javascript">setTimeout("redirect('${href}');",2000);</script>
    </#if>

    <#if  type=="close">
    <#--关闭页面-->
        <a href="javascript:window.close();">如果您的浏览器没有自动关闭，请点击这里</a>
        <script style="text/javascript">setTimeout("window.close()", 1200);</script>
    </#if>

    </div>

    <script style="text/javascript">
        function close_dialog()
        {
            window.top.right.location.reload();
            window.top.art.dialog({id: ""}).close();
        }
    </script>


</body>
</html>