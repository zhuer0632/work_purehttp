package com.comdev.ctrls.member;

import com.comdev.biz.loginbiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: zhu
 * Date: 13-5-5
 * Time: 上午2:06
 */
@Controller
@RequestMapping("login")
public class login
{

    @Autowired
    private loginbiz biz;

    @RequestMapping("login")
    @ResponseBody
    public String login(@RequestParam("username") String username, @RequestParam("password") String password)
    {
        try
        {
            biz.login(username, password);
        }
        catch (Exception e)
        {
            return e.getMessage();
        }
        return "登录成功";
    }


}
