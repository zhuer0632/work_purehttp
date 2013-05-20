package com.comdev.ctrls.shuju.meta.tablemanager;

import com.alibaba.druid.pool.DruidDataSource;
import com.comdev.common.Page;
import com.comdev.consts.ConstDB;
import com.comdev.db.DbKit;
import com.comdev.exceptions.CommonOut;
import com.comdev.exceptions.Reps;
import com.comdev.online.ConstOnline;
import com.comdev.vos.VODB;
import com.comdev.vos.VOLogon;
import com.comdev.vos.VONews;
import com.comdev.vos.VOTable;
import com.me.ut.string.StringUT;
import org.nutz.dao.Cnd;
import org.nutz.dao.entity.Record;
import org.nutz.dao.impl.NutDao;
import org.nutz.dao.pager.Pager;
import org.nutz.dao.util.cri.SimpleCriteria;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * User: zhu
 * Date: 13-4-21
 * Time: 下午2:37
 */
@RequestMapping("shuju/meta/tablemanager/")
@Controller
@SessionAttributes("curuser")
public class tablemanager
{

    /**
     * 列出所有的的表 [目前版本没有权限限制，没有多个项目的管理，就连接当前的数据库进行试验]
     *
     * @return
     */
    @RequestMapping("showpage_list")
    public String showpage_createtable()
    {
        return "/shuju/meta/tablemanager/showpage_list";
    }

    /**
     * 修改某个表的属性(不是字段属性)的时候，显示页面
     * @param objid_
     * @return
     */
    @RequestMapping("showpage_adduptable")
    public  String  showpage_adduptable(@RequestParam("objid_")String objid_)
    {
            return "shuju/meta/tablemanager/showpage_adduptable";
    }


    /**
     * 点击某个表，列出其中的所有的字段
     *
     * @return
     */
    @RequestMapping("columns")
    @ResponseBody
    public Map columns()
    {
        Map out = new HashMap<String, String>();
        try
        {

        } catch (CommonOut e)
        {
            Reps.add(out, e);
            return out;
        } catch (Exception e)
        {
            Reps.add(out, e);
            return out;
        }
        Reps.success(out);
        return out;


    }

    /**
     * 点击某个表，列出其中的所有的字段
     *
     * @return
     */
    @RequestMapping("tables")
    @ResponseBody
    public Map tables(@RequestParam("pageno") int pageno, @RequestParam("args") String args, @ModelAttribute("curuser") VOLogon vologon, HttpServletRequest request)
    {
//        NutDao dao = ConstOnline.get(request);
//        List<Record> datass = dao.query("t1", null);//测试nutz是否可用

        Map out = new HashMap();
        Pager pager = new Pager();
        pager.setPageNumber(pageno);
        pager.setPageSize(5);


        //准备查询参数
        String in = StringUT.Base64_decode_url(args);
        String[] in_arr = in.split("\\{&\\}");
        SimpleCriteria cri = Cnd.cri();
        for (int i = 0; i < in_arr.length; i++)
        {
            String temp = in_arr[i];
            String[] temp_arr = temp.split("\\{=\\}");
            if (temp_arr.length == 1)
            {
                continue;
            }
            cri.where().andLike(temp_arr[0], temp_arr[1]);
        }

        cri.desc("modifydate_");

        //不分页的情况下，使用搜索条件取得的所有数量
        int allcount = DbKit.getDao().count(VOTable.class, cri);

        //取得实际要返回的数量
        out.put("datas", DbKit.getDao().query(VOTable.class, cri, pager));

        //%s是页码
        Pager.DEFAULT_PAGE_SIZE = pager.getPageSize();//把pagesize放在公共变量里
        out.put("pages", Page.pages(allcount, pageno, "javascript:page(%s,'" + args + "');"));
        return out;

    }


    /**
     * 点击某一列，artdialog 编辑页面
     *
     * @return
     */
    @RequestMapping("columns2")
    @ResponseBody
    public Map string()
    {
        Map map = new HashMap();

        return map;
    }


    @RequestMapping("initconn")
    @ResponseBody
    public String initconn(@RequestParam("dbid") String db_objid, HttpServletRequest request)
    {
        try
        {
            String sessionid = request.getSession().getId();
            VODB db = DbKit.getDao().fetch(VODB.class, db_objid);
            NutDao dao = createDAO(db);
            ConstOnline.add(sessionid, dao);
        } catch (Exception e)
        {
            return e.getMessage();
        }
        return "初始化成功";
    }

    private NutDao createDAO(VODB db)
    {
        NutDao dao = new NutDao();
        DruidDataSource druid = new DruidDataSource();

        String url = "";
        if (db.getDbtype_().equals(ConstDB.MYSQL))
        {
            url = "jdbc:mysql://" + db.getIp_() + ":" + db.getPort_() + "/" + db.getDbname_() + "?charachterEncoding=UTF-8;";
        }

        if (db.getDbtype_().equals(ConstDB.SQL2000))
        {
            url = "jdbc:jtds:sqlserver://" + db.getIp_() + ":" + db.getPort_() + ";databaseName=" + db.getDbname_() + ";SelectMethod=cursor";
        }

        druid.setUrl(url);
        druid.setUsername(db.getUsername_());
        druid.setPassword(db.getPassword_());
        druid.setMaxWait(6000);// 最多创建多少链接
        druid.setMaxActive(500);// 最少保留多少链接
        druid.setInitialSize(2);// 没有连接的时候一次创建多少
        dao.setDataSource(druid);
        return dao;

    }


}
