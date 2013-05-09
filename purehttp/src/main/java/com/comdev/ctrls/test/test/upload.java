package com.comdev.ctrls.test.test;

import com.me.ut.string.StringUT;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * User: zhu
 * Date: 13-4-22
 * Time: 下午10:44
 */
@Controller
@RequestMapping("test/test/upload")
public class upload
{

    @RequestMapping("show")
    public String show()
    {
        return "test/test/upload/show";
    }


    @RequestMapping("upload_dialog")
    public ModelAndView upload_dialog(HttpServletRequest request, HttpServletResponse reps)
    {
        ModelAndView mod = new ModelAndView();
        mod.setViewName("test/test/upload/upload_dialog");
        mod.addObject("JSESSIONID", StringUT.JSESSIONID(request));

        //Set-Cookie	JSESSIONID=cjpjezkswurq;Path=/
//        reps.setHeader("Set-Cookie","JSESSIONID="+StringUT.JSESSIONID(request)+";Path=/");
        return mod;
    }


}
