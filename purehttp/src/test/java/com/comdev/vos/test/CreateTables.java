package com.comdev.vos.test;

import com.comdev.ut.ClassMapping;
import com.comdev.vos.VOFile;
import org.junit.Test;

/**
 * Author: gnoloahs
 * Date: 2013-04-09
 * Time: 下午1:24
 */
public class CreateTables
{


    @Test
    public void test01()
    {

        //ClassMapping.CreateTable(VOPet.class);
        ClassMapping.CreateTable(VOFile.class);


    }


}
