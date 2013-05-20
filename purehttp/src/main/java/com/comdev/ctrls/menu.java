package com.comdev.ctrls;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * User: zhu
 * Date: 13-4-21
 * Time: 下午1:53
 */
@Controller
@RequestMapping("menu")
public class menu
{

    @RequestMapping("shuju")
    @ResponseBody
    public String shuju()
    {
        return "<h3 class=\"f14\"><span class=\"switchs cu on\" title=\"展开与收缩\"></span>Meta</h3>\n" +
                "\n" +
                "<ul>\n" +
                "<li id=\"_MP11\" class=\"sub_menu\"><a href=\"javascript:_MP(11,'/shuju/meta/tablemanager/showpage_list');\" hidefocus=\"true\" style=\"outline:none;\">表结构</a></li>\n" +
//                "<li id=\"_MP12\" class=\"sub_menu\"><a href=\"javascript:_MP(12,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">表结构</a></li>\n" +
//                "<li id=\"_MP13\" class=\"sub_menu\"><a href=\"javascript:_MP(13,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">健康检查</a></li>\n" +
//                "<li id=\"_MP14\" class=\"sub_menu\"><a href=\"javascript:_MP(14,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">下载Class</a></li>\n" +
                "<li id=\"_MP14\" class=\"sub_menu\"><a href=\"javascript:_MP(15,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">健康检查</a></li>\n" +
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

    @RequestMapping("quanxian")
    @ResponseBody
    public String quanxian()
    {
        return "<h3 class=\"f14\"><span class=\"switchs cu on\" title=\"展开与收缩\"></span>Meta</h3>\n" +
                "\n" +
                "<ul>\n" +
                "<li id=\"_MP11\" class=\"sub_menu\"><a href=\"javascript:_MP(11,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">权限</a></li>\n" +
                "<li id=\"_MP12\" class=\"sub_menu\"><a href=\"javascript:_MP(12,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">表结构</a></li>\n" +
                "<li id=\"_MP13\" class=\"sub_menu\"><a href=\"javascript:_MP(13,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">健康检查</a></li>\n" +
                "<li id=\"_MP14\" class=\"sub_menu\"><a href=\"javascript:_MP(14,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">下载Class</a></li>\n" +
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

    @RequestMapping("gongzuoliu")
    @ResponseBody
    public String gongzuoliu()
    {
        return "<h3 class=\"f14\"><span class=\"switchs cu on\" title=\"展开与收缩\"></span>Meta</h3>\n" +
                "\n" +
                "<ul>\n" +
                "<li id=\"_MP11\" class=\"sub_menu\"><a href=\"javascript:_MP(11,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">工作流</a></li>\n" +
                "<li id=\"_MP12\" class=\"sub_menu\"><a href=\"javascript:_MP(12,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">表结构</a></li>\n" +
                "<li id=\"_MP13\" class=\"sub_menu\"><a href=\"javascript:_MP(13,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">健康检查</a></li>\n" +
                "<li id=\"_MP14\" class=\"sub_menu\"><a href=\"javascript:_MP(14,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">下载Class</a></li>\n" +
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

    @RequestMapping("chajian")
    @ResponseBody
    public String chajian()
    {
        return "<h3 class=\"f14\"><span class=\"switchs cu on\" title=\"展开与收缩\"></span>Meta</h3>\n" +
                "\n" +
                "<ul>\n" +
                "<li id=\"_MP11\" class=\"sub_menu\"><a href=\"javascript:_MP(11,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">插件</a></li>\n" +
                "<li id=\"_MP12\" class=\"sub_menu\"><a href=\"javascript:_MP(12,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">表结构</a></li>\n" +
                "<li id=\"_MP13\" class=\"sub_menu\"><a href=\"javascript:_MP(13,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">健康检查</a></li>\n" +
                "<li id=\"_MP14\" class=\"sub_menu\"><a href=\"javascript:_MP(14,'content/content/main');\" hidefocus=\"true\" style=\"outline:none;\">下载Class</a></li>\n" +
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

    //上面是一级菜单


    //以下是二级菜单


    //数据  Meta
    @RequestMapping("shuju/meta/createtable")
    public String shuju_meta_createtable()
    {
        return "shuju/meta/createtable";
    }


    //....................

    @RequestMapping("quanxian/xxx/createtable")
    public String quanxian_xxx_createtable()
    {
        return "";
    }


}
