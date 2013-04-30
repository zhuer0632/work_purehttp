package com.comdev.ctrls.test.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: zhu
 * Date: 13-4-30
 * Time: 下午5:43
 */
@RequestMapping("test/test/curd")
@Controller
public class curd
{

    @RequestMapping("show")
    public String show()
    {
        return "test/test/curd/show";
    }

}
