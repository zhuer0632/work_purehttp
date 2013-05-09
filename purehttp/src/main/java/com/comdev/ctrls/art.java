package com.comdev.ctrls;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: zhu
 * Date: 13-4-24
 * Time: 下午11:41
 */
@Controller
@RequestMapping("art")
public class art
{

    @RequestMapping("sub_page")
    public String sub_page()
    {
        return "test/test/subpage";
    }

    @RequestMapping("main")
    public  String main()
    {

        return "test/test/main";

    }

}
