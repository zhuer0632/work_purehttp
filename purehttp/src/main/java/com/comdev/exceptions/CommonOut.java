package com.comdev.exceptions;

/**
 * Author: gnoloahs
 * Date: 2013-04-11
 * Time: 下午4:21
 */
public class CommonOut extends RuntimeException
{

    public String code;
    public String desc;

    public CommonOut()
    {
        this.desc = "msg";
        this.code = "custom";
    }

    public CommonOut(String msg)
    {
        this.desc = msg;
        this.code = "custom";
    }

    public String getCode()
    {
        return code;
    }

    public void setCode(String code)
    {
        this.code = code;
    }

    public String getDesc()
    {
        return desc;
    }

    public void setDesc(String desc)
    {
        this.desc = desc;
    }
}
