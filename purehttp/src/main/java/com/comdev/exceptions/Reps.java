package com.comdev.exceptions;

import com.comdev.consts.ConstSys;
import org.apache.log4j.Logger;
import org.nutz.lang.Lang;

import java.util.Map;

/**
 * Author: gnoloahs
 * Date: 2013-04-12
 * Time: 下午4:54
 */
public class Reps
{
    private static  final Logger  logger=Logger.getLogger(Reps.class);
    /**
     * 往map中添加错误信息
     */
    public static void add(Map map, Exception e)
    {
        logger.debug(Lang.getStackTrace(e));

        if(e instanceof CommonOut)
        {
            map.put(ConstSys.REPS_CODE, ((CommonOut) e).code);
            map.put(ConstSys.REPS_DESC, ((CommonOut) e).desc);
            return;
        }
        //往map中添加数据
        map.put(ConstSys.REPS_CODE, "common exceptino");
        map.put(ConstSys.REPS_DESC, Lang.getStackTrace(e));
    }


    public static void success(Map map)
    {
        map.put(ConstSys.REPS_CODE, "0");
        map.put(ConstSys.REPS_DESC, "success!   :) ");
    }
}
