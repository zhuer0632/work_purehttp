package com.comdev.vos;

import org.nutz.dao.entity.annotation.*;

import java.util.Date;

/**
 * User: zhu
 * Date: 13-5-12
 * Time: 下午6:13
 */

/**
 * 存放数据库的连接信息，及所有人
 */
@Table("t_dbs")
public class VODB
{

    @Name
    @Column
    @ColDefine(width = 32)
    private String objid_;

    @Column
    @ColDefine(width = 32)
    private String coderid_;

    @Column
    @ColDefine(width = 30)
    private String ip_;

    @Column
    private int  port_;

    @Column
    @ColDefine(width = 30)
    private String dbname_;

    @Column
    @ColDefine(width = 50)
    private String username_; //连接数据库的用户名

    @Column
    @ColDefine(width = 50)
    private String password_; //连接数据库的密码

    @Column
    @ColDefine(width = 20)
    private String dbtype_;// 数据库的类型


    @Column
    @ColDefine(type = ColType.DATETIME)
    private Date modifydate_;

    public int getPort_()
    {
        return port_;
    }

    public void setPort_(int port_)
    {
        this.port_ = port_;
    }

    public String getDbname_()
    {
        return dbname_;
    }

    public void setDbname_(String dbname_)
    {
        this.dbname_ = dbname_;
    }

    public Date getModifydate_()
    {
        return modifydate_;
    }

    public void setModifydate_(Date modifydate_)
    {
        this.modifydate_ = modifydate_;
    }

    public String getObjid_()
    {
        return objid_;
    }

    public void setObjid_(String objid_)
    {
        this.objid_ = objid_;
    }

    public String getCoderid_()
    {
        return coderid_;
    }

    public void setCoderid_(String coderid_)
    {
        this.coderid_ = coderid_;
    }

    public String getIp_()
    {
        return ip_;
    }

    public void setIp_(String ip_)
    {
        this.ip_ = ip_;
    }

    public String getUsername_()
    {
        return username_;
    }

    public void setUsername_(String username_)
    {
        this.username_ = username_;
    }

    public String getPassword_()
    {
        return password_;
    }

    public void setPassword_(String password_)
    {
        this.password_ = password_;
    }

    public String getDbtype_()
    {
        return dbtype_;
    }

    public void setDbtype_(String dbtype_)
    {
        this.dbtype_ = dbtype_;
    }
}
