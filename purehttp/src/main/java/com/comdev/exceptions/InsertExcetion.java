package com.comdev.exceptions;

import com.comdev.consts.ConstException;

/**
 * Author: gnoloahs
 * Date: 2013-04-11
 * Time: 下午7:03
 */
public class InsertExcetion extends CommonOut
{

    public InsertExcetion()
    {
        super.setCode(ConstException.ARGS_EXCEPTION_CODE);
        super.setDesc(ConstException.ARGS_EXCEPTION_DESC);
    }


    public InsertExcetion(String message)
    {
        super.setCode(ConstException.ARGS_EXCEPTION_CODE);
        super.setDesc(message);
    }


}
