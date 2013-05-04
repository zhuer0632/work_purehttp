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
</head>
<body class="bg">

<div class="login_bg">

    <div class="label_username">用户名：</div>
    <div>
        <input type="text" name="usename" class="input"/>
    </div>
    <div class="label_password">密码：</div>
    <div><input type="text" name="password" class="input"/></div>
    <div class="button"><a href="javascript:void (0)"><img src="/statics/images/login_but.jpg"></a></div>
</div>

</body>
</html>