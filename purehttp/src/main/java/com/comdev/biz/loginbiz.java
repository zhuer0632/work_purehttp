package com.comdev.biz;

import org.springframework.stereotype.Controller;

/**
 * User: zhu
 * Date: 13-5-5
 * Time: 上午3:20
 */
@Controller
public class loginbiz
{

    public void  login(String username,String password)
    {

        if(!username.equals("admin"))
        {
            throw new RuntimeException("用户名不存在");
        }
        if(!password.equals("admin"))
        {
            throw new RuntimeException("密码不正确");
        }

    }

}
