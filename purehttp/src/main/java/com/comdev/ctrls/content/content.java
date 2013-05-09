package com.comdev.ctrls.content;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: zhu
 * Date: 13-4-15
 * Time: 上午3:51
 */
@RequestMapping("content/content")
@Controller
public class content
{

    @RequestMapping("main")
    public String main()
    {
        return  "content/content/main";
    }





}
