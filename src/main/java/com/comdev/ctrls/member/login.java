package com.comdev.ctrls.member;

import com.comdev.biz.loginbiz;
import com.comdev.vos.VOLogon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpServletResponse;

/**
 * User: zhu
 * Date: 13-5-5
 * Time: 上午2:06
 */
@Controller
@RequestMapping("login")
@SessionAttributes("curuser")
public class login
{

    @Autowired
    private loginbiz biz;

    @RequestMapping("login")
    @ResponseBody
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, ModelMap model)
    {
        try
        {
            biz.login(username, password);
        } catch (Exception e)
        {
            return e.getMessage();
        }
        VOLogon voLogon = new VOLogon();
        voLogon.setUsername(username);
        voLogon.setPassword(password);
        model.addAttribute("curuser", voLogon);
        return "登录成功";
    }


    @RequestMapping("logout")
    @ResponseBody
    public String logout(@ModelAttribute("curuser") VOLogon logon,
                         SessionStatus status)
    {
        status.setComplete();
        return "退出成功";
    }




}
