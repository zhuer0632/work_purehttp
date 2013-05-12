package com.comdev.consts;

/**
 * User: zhu
 * Date: 13-5-12
 * Time: 上午4:07
 */
public class ConstColumn
{

    public  static  String  VARCHAR="varchar";

    //不用blob类型的字段，所有二进制都要以文件形式存放,因为硬盘比数据库便宜
    public  static  String  TEXT="text";

    public  static  String  DATE="date";
    public  static  String  DATETIME="datetime";
    public  static  String  INT="int";
    public  static  String  FLOAT="float";


}
