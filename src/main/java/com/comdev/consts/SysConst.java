package com.comdev.consts;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Author: gnoloahs
 * Date: 2013-04-09
 * Time: 上午10:05
 */
public class SysConst
{

    //项目地址   比如  "/bea"
    public static String SYS_PATH = "/";

    public static final int PAGESIZE = 10;

    public static final AtomicInteger i =new AtomicInteger();


    public static List<String> imgList=new ArrayList<String>();

    static {
            imgList.add("jpeg");
            imgList.add("jpg");
            imgList.add("png");
            imgList.add("gif");
            imgList.add("bmp");
    }
}
