<#include "../../header.ftl">
<script type="text/javascript">
    $(document).ready(function() {
        $.formValidator.initConfig({autotip:true,formid:"myform",onerror:function(msg){}});
        $("#old_password").formValidator({empty:true,onshow:"不修改密码请留空。",onfocus:"密码应该为6-20位之间",oncorrect:"旧密码输入正确"}).inputValidator({min:6,max:20,onerror:"密码应该为6-20位之间"}).ajaxValidator({
            type : "get",
            url : "",
            data :"m=admin&c=admin_manage&a=public_password_ajx",
            datatype : "html",
            async:'false',
            success : function(data){
                if( data == "1" )
                {
                    return true;
                }
                else
                {
                    return false;
                }
            },
            buttons: $("#dosubmit"),
            onerror : "旧密码输入错误",
            onwait : "请稍候..."
        });
        $("#new_password").formValidator({empty:true,onshow:"不修改密码请留空。",onfocus:"密码应该为6-20位之间"}).inputValidator({min:6,max:20,onerror:"密码应该为6-20位之间"});
        $("#new_pwdconfirm").formValidator({empty:true,onshow:"不修改密码请留空。",onfocus:"请输入两次密码不同。",oncorrect:"密码输入一致"}).compareValidator({desid:"new_password",operateor:"=",onerror:"请输入两次密码不同。"});
    })
</script>
<div class="pad_10">
    <div class="common-form">
        <form name="myform" action="?m=admin&c=admin_manage&a=public_edit_pwd" method="post" id="myform">
            <input type="hidden" name="info[userid]" value="1"></input>
            <input type="hidden" name="info[username]" value="admin"></input>
            <table width="100%" class="table_form contentWrap">
                <tr>
                    <td width="80">用户名</td>
                    <td>admin (真实姓名 )</td>
                </tr>

                <tr>
                    <td>E-mail</td>
                    <td>
                        zhushaolong@gmail.com</td>
                </tr>

                <tr>
                    <td>旧密码</td>
                    <td><input type="password" name="old_password" id="old_password" class="input-text"></input></td>
                </tr>

                <tr>
                    <td>新密码</td>
                    <td><input type="password" name="new_password" id="new_password" class="input-text"></input></td>
                </tr>
                <tr>
                    <td>重复新密码</td>
                    <td><input type="password" name="new_pwdconfirm" id="new_pwdconfirm" class="input-text"></input></td>
                </tr>

            </table>

            <div class="bk15"></div>
            <input name="dosubmit" type="submit" value="提交" class="button" id="dosubmit">
        </form>
    </div>
</div>
</body>
</html>