package com.comdev.ctrls.test.test;

import com.comdev.consts.SysConst;
import com.comdev.db.DbKit;
import com.comdev.vos.VONews;
import com.me.ut.string.StringUT;
import org.nutz.dao.Chain;
import org.nutz.dao.Cnd;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

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


    @RequestMapping("list")
    @ResponseBody
    public Map list()
    {
        Map out = new HashMap();
        out.put("data", DbKit.getDao().query(VONews.class, null));
        return out;
    }


    //显示添加的页面
    @RequestMapping("show_add")
    public String show_add()
    {
        return "test/test/curd/add";
    }

    @RequestMapping("show_edit")
    public ModelAndView show_edit(@RequestParam("objid_") String objid_)
    {

        ModelAndView mod = new ModelAndView();
        VONews news = DbKit.getDao().fetch(VONews.class, objid_);

        mod.addObject("news", news);

        mod.setViewName("test/test/curd/add");
        return mod;
    }

    //执行添加命令
    @RequestMapping("do_addup")
    @ResponseBody
    public String do_addup(@RequestParam("objid") String objid, @RequestParam("title") String title, @RequestParam("content") String content)
    {
        if (StringUT.isEmpty(objid))
        {
            DbKit.getDao().insert(VONews.me(title, content));
        }
        else
        {
            DbKit.getDao().update(VONews.class, Chain.make("title_", title).add("content_", content), Cnd.where("objid_", "=", objid));
        }
        return "";
    }

    @RequestMapping("showmessage")
    public ModelAndView showmessage(@RequestParam("type") String type, @RequestParam("data") String data, @RequestParam("href") String href)
    {
        ModelAndView mod = new ModelAndView();

        mod.addObject("type", type);
        mod.addObject("data", StringUT.Base64_decode(data.replace("-", "+").replace("_", "/"), "UTF-8"));
        mod.addObject("href", StringUT.Base64_decode(href.replace("-", "+").replace("_", "/"), "UTF-8"));
        mod.setViewName("/test/test/curd/showmessage");

        return mod;
    }


}
