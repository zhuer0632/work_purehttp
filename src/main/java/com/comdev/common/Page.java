package com.comdev.common;

import org.springframework.stereotype.Component;

/**
 * User: zhu
 * Date: 13-4-22
 * Time: 上午5:33
 */
@Component
/**
 *  参考phpcms中的一个分页算法 [phpcms/modules/content/functions/util.func.php  content_pages]
 */
public class Page
{

    /**
     *
     * 返回的是分页部分的html内容
     *
     * @param pagenums     分页后的总数量
     * @param curr_page 要请求第几页的内容
     * @param pageurl url的通用地址[要携带可能有的查询参数]
     * @return
     */
    public static String pages(int pagenums, int curr_page, String pageurl)
    {
        String multipage = new String();

        int page = 11;//最全状态下要显示的数量，两个省略号中的数量+2=11
        int offset = 4;//当前连接左右的个数
        int pages = pagenums;//分页后的总数量
        int from = curr_page - offset;
        int to = curr_page + offset;
        int more = 0;//是否显示省略号

        //确定from和to的位置，一级是否显示省略号
        if (page >= pages)
        {
            from = 2;
            to = pages - 1;
        }
        else
        {
            if (from <= 1)
            {
                to = page - 1;
                from = 2;
            }
            else if (to >= pages)
            {
                from = pages - (page - 2);
                to = pages - 1;
            }
            more = 1;
        }

        // 上一页连接和第一页的连接
        if (curr_page > 0)
        {
            int perpage = curr_page == 1 ? 1 : curr_page - 1;
            multipage += "<a class=\"a1\" href=" + String.format(pageurl,perpage) + ">上一页</a>  ";
            if (curr_page == 1)
            {
                multipage += "<span>1</span>";
            }
            else if (curr_page > 6 && more > 0)
            {
                multipage += "<a href=" + String.format(pageurl,"1") + ">1</a>..  ";
            }
            else
            {
                multipage += "<a href=" + String.format(pageurl,"1") + ">1</a>  ";
            }
        }

        //两个省略号中间的部分
        for (int i = from; i <= to; i++)
        {
            if (i != curr_page)
            {
                multipage += "<a href=" + String.format(pageurl,i) + ">" + i + "</a>  ";
            }
            else
            {
                multipage += " <span>" + curr_page+ "</span>  ";
            }
        }

        //最后的链接
        if (curr_page < pages)
        {
            if (curr_page < pages - 5 && more > 0)
            {
                multipage += " ..<a href=" + String.format(pageurl,pages) + ">" + pages + "</a> <a class=\"a1\" href=" + String.format(pageurl,curr_page+1) + ">下一页</a> ";
            }
            else
            {
                multipage += " <a href=" + String.format(pageurl,pages) + ">" + pages + "</a> <a class=\"a1\" href=" + String.format(pageurl,curr_page+1) + ">下一页</a>  ";
            }
        }
        else if (curr_page == pages)
        {
            multipage += " <span>"+pages+"</span> <a class=\"a1\" href=" + String.format(pageurl,curr_page) + ">下一页</a>";
        }

        return multipage;
    }

}
