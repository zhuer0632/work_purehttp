package com.comdev.common;

import com.me.ut.string.StringUT;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Author: gnoloahs
 * Date: 2013-04-16
 * Time: 下午4:51
 */
public class AppInerceptor implements HandlerInterceptor
{

    //进入control前
    @Override
    public boolean preHandle(HttpServletRequest httpreq, HttpServletResponse reps, Object o) throws Exception
    {

//        if(1==1)
//        {
//                return true;
//        }

        HttpSession session = httpreq.getSession();
        if (!StringUT.isEmpty(session.getAttribute("curuser")) || inPassUrl(httpreq.getPathInfo()))
        {
            return true;
        }
        reps.setCharacterEncoding("UTF-8");
        reps.addHeader("Content-Type", "text/html; charset=UTF-8");
        reps.getWriter().write("{\"reps_code\":\"-1\",\"reps_des\":\"登录超时或尚未登录\"}");
        return false;
    }


    private boolean inPassUrl(String cur)
    {
        if (cur.equals("/"))
        {
            return true;
        }
        List<String> passurls = new ArrayList<String>();
        passurls.add("/login/login");
        passurls.add(".js");
        passurls.add(".jpg");
        passurls.add(".png");
        passurls.add(".gif");
        passurls.add(".css");
        for (int i = 0; i < passurls.size(); i++)
        {
            String pass = passurls.get(i);
            if (cur.contains(pass))
            {
                return true;
            }
        }
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception
    {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception
    {

    }
}
