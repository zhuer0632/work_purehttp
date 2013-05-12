package com.comdev.online;

import com.comdev.vos.VOLogon;
import org.nutz.dao.impl.NutDao;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * User: zhu
 * Date: 13-5-12
 * Time: 下午9:29
 */
public class OnlineUserListener implements HttpSessionListener
{

    public void sessionCreated(HttpSessionEvent event)
    {
        System.out.println("新建session:" + event.getSession().getId());
    }

    public void sessionDestroyed(HttpSessionEvent event)
    {
        HttpSession session = event.getSession();
        ServletContext application = session.getServletContext();
        // 取得登录的用户名
        VOLogon username = (VOLogon) session.getAttribute("curuser");
// 从在线列表中删除用户名
//        List onlineUserList = (List) application.getAttribute("onlineUserList");
//        onlineUserList.remove(username);
        ConstOnline.remove(session.getId());
        System.out.println(session.getId() + "已经退出！");
    }
}


