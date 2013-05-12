package com.comdev.exceptions;

import com.comdev.consts.ConstException;
import com.me.ut.string.StringUT;

import java.util.List;

/**
 * Author: gnoloahs
 * Date: 2013-04-11
 * Time: 下午4:20
 */
public class ArgsException extends CommonOut
{


    public ArgsException()
    {
        super.setCode(ConstException.ARGS_EXCEPTION_CODE);
        super.setDesc(ConstException.ARGS_EXCEPTION_DESC);
    }

    public ArgsException(String desc)
    {
        super.setCode(ConstException.ARGS_EXCEPTION_CODE);
        super.setDesc(desc);
    }


    public ArgsException(List<String> errs)
    {
        super.setCode(ConstException.ARGS_EXCEPTION_CODE);
        super.setDesc(StringUT.toString(errs,","));

    }
}
