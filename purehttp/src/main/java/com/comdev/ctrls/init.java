package com.comdev.ctrls;

import com.comdev.vos.VOLogon;
import org.nutz.dao.impl.NutDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 * Author: gnoloahs
 * Date: 2013-04-09
 * Time: 上午9:06
 */

@Controller
@RequestMapping("/")
@SessionAttributes("curuser")
public class init
{

    @Autowired
    private NutDao dao;

    @RequestMapping("/")
    public ModelAndView showIndex()
    {
        ModelAndView out = new ModelAndView();

        out.addObject("hello", "你好！java！");

        out.addObject("db", dao.meta().getProductName() + "--" + dao.meta().getVersion());

//        out.setViewName("index");

        out.setViewName("login");
        return out;
    }


    @RequestMapping("showmsg")
    public String showmsg()
    {
        return "showmsg";
    }


    @RequestMapping("/indexmain")
    public ModelAndView indexmain(@ModelAttribute("curuser") VOLogon voLogon)
    {
        ModelAndView out = new ModelAndView();
        out.setViewName("indexmain");
        return out;
    }

    @RequestMapping("/admin")
    public ModelAndView index(@ModelAttribute("curuser") VOLogon voLogon)
    {
        ModelAndView out = new ModelAndView();
        out.setViewName("index");
        return out;
    }

    /**
     * 进入后台首页的时候初始化左侧菜单
     *
     * @return
     */
    @RequestMapping("init")
    @ResponseBody
    public String init(@ModelAttribute("curuser") VOLogon voLogon)
    {
        return "<h3 class=\"f14\"><span class=\"switchs cu on\" title=\"展开与收缩\"></span>Meta</h3>\n" +
                "\n" +
                "<ul>\n" +
                "<li id=\"_MP11\" class=\"sub_menu\"><a href=\"javascript:_MP(11,'test/test/test/show');\" hidefocus=\"true\" style=\"outline:none;\">测试1-分页</a></li>\n" +
                "<li id=\"_MP12\" class=\"sub_menu\"><a href=\"javascript:_MP(12,'test/test/upload/show');\" hidefocus=\"true\" style=\"outline:none;\">测试2-上传</a></li>\n" +
                "<li id=\"_MP13\" class=\"sub_menu\"><a href=\"javascript:_MP(13,'test/test/curd/show');\" hidefocus=\"true\" style=\"outline:none;\">测试3-增删改查</a></li>\n" +
                "<li id=\"_MP14\" class=\"sub_menu\"><a href=\"javascript:_MP(14,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">测试4-对话框</a></li>\n" +
                "</ul>\n" +
                "\n" +
                "\n" +
                "<h3 class=\"f14\"><span class=\"switchs cu on\" title=\"展开与收缩\"></span>Data</h3>\n" +
                "<ul>\n" +
                "<li id=\"_MP21\" class=\"sub_menu\"><a href=\"javascript:_MP(21,'content/content/main')\" hidefocus=\"true\" style=\"outline:none;\">查询</a></li>\n" +
                "<li id=\"_MP22\" class=\"sub_menu\"><a href=\"javascript:_MP(22,'content/content/main')\" hidefocus=\"true\" style=\"outline:none;\">健康检查</a></li>\n" +
                "</ul>\n" +
                "\n" +
                "<h3 class=\"f14\"><span class=\"switchs cu on\" title=\"展开与收缩\"></span>版本控制</h3>\n" +
                "<ul>\n" +
                "<li id=\"_MP31\" class=\"sub_menu\"><a href=\"javascript:_MP(31,'content/content/main')\" hidefocus=\"true\" style=\"outline:none;\">转换</a></li>\n" +
                "<li id=\"_MP32\" class=\"sub_menu\"><a href=\"javascript:_MP(32,'content/content/main')\" hidefocus=\"true\" style=\"outline:none;\">备份/还原</a></li>\n" +
                "<li id=\"_MP33\" class=\"sub_menu\"><a href=\"javascript:_MP(33,'content/content/main')\" hidefocus=\"true\" style=\"outline:none;\">导入/导出</a></li>\n" +
                "</ul>\n" +
                " \n" +
                "<script type=\"text/javascript\">\n" +
                "$(\".switchs\").each(function(i){\n" +
                "\tvar ul = $(this).parent().next();\n" +
                "\t$(this).click(\n" +
                "\tfunction(){\n" +
                "\t\tif(ul.is(':visible')){\n" +
                "\t\t\tul.hide();\n" +
                "\t\t\t$(this).removeClass('on');\n" +
                "\t\t\t\t}else{\n" +
                "\t\t\tul.show();\n" +
                "\t\t\t$(this).addClass('on');\n" +
                "\t\t}\n" +
                "\t})\n" +
                "});\n" +
                "</script>";
    }


}
