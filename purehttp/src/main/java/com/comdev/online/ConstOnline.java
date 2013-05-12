package com.comdev.online;

import com.me.ut.string.StringUT;
import org.nutz.dao.impl.NutDao;

import javax.servlet.http.HttpServletRequest;
import java.util.Hashtable;

/**
 * User: zhu
 * Date: 13-5-12
 * Time: 下午11:51
 */
public class ConstOnline
{

    public static final Hashtable<String, NutDao> daos = new Hashtable<String, NutDao>();

    /**
     * 移除一个sessionid对应的Nutdao,不用synchronized也可以，因为sessionid是服务器端生成的，不重复
     *
     * @param sessionid
     * @param dao
     */
    public static synchronized void add(String sessionid, NutDao dao)
    {
        if (StringUT.isEmpty(dao))
        {
            return;
        }
        if (StringUT.isEmpty(sessionid))
        {
            return;
        }
        daos.put(sessionid, dao);
    }

    public static synchronized void remove(String sessionid)
    {
        if (StringUT.isEmpty(sessionid))
        {
            return;
        }
        daos.remove(sessionid);
    }

    public static synchronized NutDao get(HttpServletRequest request)
    {
        return  daos.get(request.getSession().getId());
    }


}
