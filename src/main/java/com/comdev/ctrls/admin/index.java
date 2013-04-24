package com.comdev.ctrls.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: zhu
 * Date: 13-4-15
 * Time: 上午5:25
 */
@Controller
@RequestMapping("admin/index")
public class index
{
    //检查密码
    @RequestMapping("public_login_screenlock")
    @ResponseBody
    public  String  public_login_screenlock()
    {

            return "1";
    }

    @RequestMapping("public_lock_screen")
    @ResponseBody
    public  String public_lock_screen()
    {
            //这里要把session清空掉
           //防止用户F5之后锁屏就消失这种情况
            return "";//显示锁屏
    }

}
