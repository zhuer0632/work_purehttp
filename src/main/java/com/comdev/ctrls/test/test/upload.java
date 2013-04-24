package com.comdev.ctrls.test.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: zhu
 * Date: 13-4-22
 * Time: 下午10:44
 */
@Controller
@RequestMapping("test/test/upload")
public class upload
{

    @RequestMapping("show")
    public String show()
    {
        return "test/test/upload/show";
    }


    @RequestMapping("upload_dialog")
    public String upload_dialog()
    {
        return "test/test/upload/upload_dialog";
    }




}
