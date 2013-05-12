package com.comdev.vos;

import org.nutz.dao.entity.annotation.*;

import java.util.Date;

/**
 * User: zhu
 * Date: 13-5-12
 * Time: 下午6:23
 */

/**
 * 管理所有的表
 */
@Table("t_tables")
public class VOTable
{

    @Name
    @Column
    @ColDefine(width = 32)
    private String objid_;

    @Column
    @ColDefine(width = 50)
    private String tablename_;

    @Column
    @ColDefine(type = ColType.DATETIME)
    private Date modifydate_;

    @Column
    @ColDefine(width = 50)
    private String label_;

    @Column
    @ColDefine(width = 32)
    private String db_objid_;

    @Column
    @ColDefine(width = 1000)
    private String ref_tables_;

    @Column
    @ColDefine(width = 1000)
    private String refed_tableds_;

    public String getObjid_()
    {
        return objid_;
    }

    public void setObjid_(String objid_)
    {
        this.objid_ = objid_;
    }

    public String getTablename_()
    {
        return tablename_;
    }

    public void setTablename_(String tablename_)
    {
        this.tablename_ = tablename_;
    }

    public Date getModifydate_()
    {
        return modifydate_;
    }

    public void setModifydate_(Date modifydate_)
    {
        this.modifydate_ = modifydate_;
    }

    public String getLabel_()
    {
        return label_;
    }

    public void setLabel_(String label_)
    {
        this.label_ = label_;
    }

    public String getDb_objid_()
    {
        return db_objid_;
    }

    public void setDb_objid_(String db_objid_)
    {
        this.db_objid_ = db_objid_;
    }

    public String getRef_tables_()
    {
        return ref_tables_;
    }

    public void setRef_tables_(String ref_tables_)
    {
        this.ref_tables_ = ref_tables_;
    }

    public String getRefed_tableds_()
    {
        return refed_tableds_;
    }

    public void setRefed_tableds_(String refed_tableds_)
    {
        this.refed_tableds_ = refed_tableds_;
    }
}
