package com.comdev.common.page.test;

import com.comdev.common.Page;
import org.apache.log4j.Logger;
import org.junit.Test;

/**
 * User: zhu
 * Date: 13-4-22
 * Time: 上午6:01
 */
public class TestPage
{

    private static final Logger logger = Logger.getLogger(TestPage.class);

    @Test
    public void test01()
    {

        Page page = new Page();

        String out = page.pages(20, 8, "http://baidu.ciom/?s=w/");

        System.out.println(out);

    }


}
