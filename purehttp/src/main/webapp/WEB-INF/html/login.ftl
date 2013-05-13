<html>
<head>
    <title>登录</title>
    <style>
        .login_bg
        {
            background: url("/statics/images/login_panel.png") no-repeat;
            /*width: 540px;*/
            /*height: 400px;*/
            /*margin: 0px auto;*/
            /*line-height: 400px;*/
            /*display: table-cell;*/
            /*vertical-align: middle;*/
            position: absolute;
            width: 540px;
            height: 400px;
            left: 50%;
            top: 50%;
            margin-left: -270px;
            margin-top: -200px;
        }

        .bg
        {
            background-image: url("/statics/images/login_bj.jpg");
        }

        .label_username
        {
            color: #A7A7A7;
            /*font-weight: bold;*/
            padding-top: 103px;
            padding-left: 64px;
            font-size: 12px;;

        }

        .label_password
        {
            color: #A7A7A7;
            /*font-weight: bold;*/
            padding-top: 20px;
            padding-left: 64px;
            font-size: 12px;;
        }

        .input
        {

            padding-top: 6px;
            padding-bottom: 5px;
            padding-left: 4px;;

            height: 32px;

            font-size: 14px;
            font-weight: bold;
            color: #AAAAAA;;
            width: 422px;
            margin-left: 64px;
            margin-top: 10px;
            font-family: Arial;

        }

        .button
        {
            margin-top: 20px;;
            margin-left: 380px;;
        }

        img
        {
            border: none;
        }
    </style>
    <link href="/statics/css/tips.css" rel="stylesheet" type="text/css">
</head>
<body class="bg">

<div class="msgbox">
    <span class="errmsg"></span><span class="errclose">×</span>
</div>

<div class="login_bg">

    <div class="label_username">用户名：</div>
    <div>
        <input type="text" name="usename" id="username" value="admin" class="input"/>
    </div>
    <div class="label_password">密码：</div>
    <div><input type="text" name="password" id="password" value="admin" class="input"/></div>
    <div class="button"><a href="javascript:login ()"><img src="/statics/images/login_but.jpg"></a></div>
</div>

</body>
</html>
<script src="/statics/js/jquery-1.8.3.min.js"></script>
<script src="/statics/js/admin_common.js"></script>
<script src="/statics/js/commons/common.js"></script>
<script src="/statics/js/commons/commonCheck.js"></script>
<script>
    function login()
    {
        if (!checkLogin())
        {
            return;
        }
    }
    function checkLogin()
    {
        if (isBlank($("#username").val()))
        {
            show_msgbox("username", "用户名不能为空");
            return false;
        }

        if (isBlank($("#password").val()))
        {
            show_msgbox("password", "密码不能为空");
            return false;
        }

        $.post("/login/login", {username: $("#username").val(), password: $("#password").val()}, function (data)
        {
            //显示登录成功


            if (data == "登录成功")
            {
                show_msgbox("", "登录成功 3");
                //显示延迟跳转
                var i = 3;
                fortimer(function(){
                    i=i-1;
                    $(".errmsg").html("登录成功 "+i);
                    if(i==1)
                    {
                        timer(function (){
                            redirect("/admin")
                        },1000);
                    }
                }, 1000);//每1秒执行一次
            }
            else{
                show_msgbox("", data);
            }
        });

    }


</script>