package com.comdev.ctrls.test.test;

import com.comdev.common.Page;
import com.comdev.common.WebPath;
import com.comdev.consts.SysConst;
import com.me.ut.collecttion.CollectionUT;
import com.me.ut.collecttion.ListUT;
import com.me.ut.string.StringUT;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.swing.plaf.ListUI;
import java.util.*;

/**
 * Author: gnoloahs
 * Date: 2013-04-22
 * Time: 上午8:29
 */
@Controller
@RequestMapping("test/test/test")
public class test
{


    @RequestMapping("show")
    //显示页面
    public String show()
    {
        return "test/test/test/show";
    }


    /**
     * 分页取得列表
     * <p/>
     * <p/>
     * url:携带查询参数的url
     * pageno:需要查询的页码
     */
    @RequestMapping("list")
    @ResponseBody
    public Map list(@RequestParam("args") String url, @RequestParam("pageno") int pageno, HttpServletRequest request)
    {


        String path1 = request.getServletPath();
        String path3 = request.getContextPath();
        String path4 = request.getQueryString();
        String path = WebPath.getCurPage(request);


        //http://wwww.xxx.com/user/list/?args=[base64编码-记得各种特殊处理]&pageno=1
        Map out = new HashMap();

        // javascript:show(1);
        out.put("pages", Page.pages(getPageNums(), pageno, "javascript:show(%s);"));//分页连接的html内容

        out.put("datas", getData(pageno));


        return out;

    }

    /**
     * 取得分页后的总数量
     */
    private int getPageNums()
    {

        List<String> out = new ArrayList<String>();
        for (int i = 0; i < 1024; i++)
        {
            out.add(String.valueOf(i)+"\\t");
        }

        return out.size() % SysConst.PAGESIZE == 0 ? out.size() / SysConst.PAGESIZE : out.size() / SysConst.PAGESIZE + 1;

    }

    /**
     * 只用指定第几页，pagesize默认都是10
     */
    private List<String> getData(int pageno)
    {
        List<String> out = new ArrayList<String>();
        for (int i = 0; i < 1024; i++)
        {
            out.add(String.valueOf(i)+"&nbsp;&nbsp;&nbsp;");
        }
        out = ListUT.cutByPage(out, pageno, SysConst.PAGESIZE);
        return out;
    }

}
