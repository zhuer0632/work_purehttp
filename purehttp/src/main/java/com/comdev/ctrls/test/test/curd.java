package com.comdev.ctrls.test.test;

import com.comdev.common.Page;
import com.comdev.db.DbKit;
import com.comdev.vos.VONews;
import com.me.ut.string.StringUT;
import org.nutz.dao.Chain;
import org.nutz.dao.Cnd;
import org.nutz.dao.pager.Pager;
import org.nutz.dao.sql.Criteria;
import org.nutz.dao.util.cri.SimpleCriteria;
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
    public Map list(@RequestParam("pageno") int pageno, @RequestParam("args") String args)
    {
        Map out = new HashMap();


        Pager pager = new Pager();
        pager.setPageNumber(pageno);
        pager.setPageSize(5 );

        String in = StringUT.Base64_decode_url(args);
        String[] in_arr = in.split("\\{&\\}");

        SimpleCriteria cri = Cnd.cri();
        for (int i = 0; i < in_arr.length; i++)
        {
            String temp = in_arr[i];
            String[] temp_arr = temp.split("\\{=\\}");
            if(temp_arr.length==1)
            {
                    continue;
            }
            cri.where().andLike(temp_arr[0], temp_arr[1]);
        }
        cri.desc("modifyDate_");

        int allcount = DbKit.getDao().count(VONews.class,cri);

        out.put("datas", DbKit.getDao().query(VONews.class, cri, pager));

        //%s是页码
        Pager.DEFAULT_PAGE_SIZE=pager.getPageSize();//把pagesize放在公共变量里
        out.put("pages", Page.pages(allcount, pageno, "javascript:page(%s,'" + args + "');"));
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


    @RequestMapping("do_delete")
    public String do_delete(@RequestParam("objid_") String[] objid_)
    {
        Criteria cri = Cnd.cri();
        cri.where().andIn("objid_", objid_);

        DbKit.getDao().clear(VONews.class, cri);

        return "/test/test/curd/show";
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
