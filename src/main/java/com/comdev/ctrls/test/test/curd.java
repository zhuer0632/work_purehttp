package com.comdev.ctrls.test.test;

import com.comdev.db.DbKit;
import com.comdev.vos.VONews;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * User: zhu
 * Date: 13-4-30
 * Time: 下午5:43
 */
@RequestMapping("test/test/curd")
@Controller
public class curd
{

    //显示list页面
    @RequestMapping("show")
    public String show()
    {
        return "test/test/curd/show";
    }

    //显示添加的页面
    @RequestMapping("show_add")
    public String show_add()
    {
        return "test/test/curd/add";
    }

    //执行添加命令
    @RequestMapping("do_add")
    @ResponseBody
    public String do_add(@RequestParam("info[title]") String title, @RequestParam("info[content]") String content)
    {
        DbKit.getDao().insert(VONews.me(title, content));
        return "";
    }


}
