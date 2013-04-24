<html>
<head>
    <script src="/statics/js/jquery-1.8.3.min.js"></script>

    <script>

        $(function ()
        {

        });

        function show(pageno)
        {
//            /test/test/test/list?args=aaa&pageno=1

            $.getJSON("/test/test/test/list?args=aaa&pageno="+pageno+"", function (data)
            {
                var pages = data['pages'];
                var datas = data['datas'];

                $("#div_pages").html(pages);
                $("#div_datas").html(datas);
            });
        }


    </script>

</head>
<body>


<a href="javascript:show(1);">显示页面</a>

<div id="div_datas"></div>
<div id="div_pages"></div>


</body>

</html>