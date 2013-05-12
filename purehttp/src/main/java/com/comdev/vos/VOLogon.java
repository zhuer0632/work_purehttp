package com.comdev.vos;

import org.nutz.dao.entity.annotation.Table;

/**
 * User: zhu
 * Date: 13-5-5
 * Time: 上午4:12
 */
@Table("t_logon")
public class VOLogon
{

    private String username;
    private String password;

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }
}
