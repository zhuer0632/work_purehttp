
package com.comdev.init;

import com.comdev.ut.ClassMapping;
import com.comdev.vos.*;

/**
 * User: zhu
 * Date: 13-5-1
 * Time: 上午1:03
 */
public class TableGernerate
{

    public static void main(String[] args)
    {
        ClassMapping.CreateTable(VOColumns.class);
        ClassMapping.CreateTable(VODB.class);
        ClassMapping.CreateTable(VOFile.class);
        ClassMapping.CreateTable(VOLogon.class);
        ClassMapping.CreateTable(VONews.class);
        ClassMapping.CreateTable(VOPet.class);
        ClassMapping.CreateTable(VOTable.class);
    }


}
