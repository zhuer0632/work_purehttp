
package com.comdev.init;

import com.comdev.ut.ClassMapping;
import com.comdev.vos.VOFile;
import com.comdev.vos.VONews;

/**
 * User: zhu
 * Date: 13-5-1
 * Time: 上午1:03
 */
public class TableGernerate
{

    public static void main(String[] args)
    {
        ClassMapping.CreateTable(VONews.class);
    }


}
