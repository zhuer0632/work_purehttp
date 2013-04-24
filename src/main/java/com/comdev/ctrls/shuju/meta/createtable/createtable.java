package com.comdev.ctrls.shuju.meta.createtable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * User: zhu
 * Date: 13-4-21
 * Time: 下午2:37
 */
@RequestMapping("shuju/meta/createtable/createtable")
public class createtable
{

    @RequestMapping("list_tables")
    @ResponseBody
    public Map list_tables()
    {
        Map map = new HashMap();
        return map;
    }

}
