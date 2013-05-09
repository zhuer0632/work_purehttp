package com.comdev.vos;

import org.nutz.dao.entity.annotation.*;

import java.util.Date;

/**
 * Author: gnoloahs
 * Date: 2013-04-24
 * Time: 上午10:04
 */
@Table("t_file")
public class VOFile
{

    @Name
    @ColDefine(width = 32)
    public String objid_;

    @ColDefine(type = ColType.DATETIME)
    public Date modifydate;

    @Comment("文件后缀")
    public String suffix_;

    @ColDefine(width = 100)
    public String filename_;

    @ColDefine(width = 100)
    public String savapath_;

    @ColDefine(type = ColType.FLOAT)
    public long filesize_;

    public String getObjid_()
    {
        return objid_;
    }

    public void setObjid_(String objid_)
    {
        this.objid_ = objid_;
    }

    public Date getModifydate()
    {
        return modifydate;
    }

    public void setModifydate(Date modifydate)
    {
        this.modifydate = modifydate;
    }

    public String getSuffix_()
    {
        return suffix_;
    }

    public void setSuffix_(String suffix_)
    {
        this.suffix_ = suffix_;
    }

    public String getFilename_()
    {
        return filename_;
    }

    public void setFilename_(String filename_)
    {
        this.filename_ = filename_;
    }

    public String getSavapath_()
    {
        return savapath_;
    }

    public void setSavapath_(String savapath_)
    {
        this.savapath_ = savapath_;
    }

    public long getFilesize_()
    {
        return filesize_;
    }

    public void setFilesize_(long filesize_)
    {
        this.filesize_ = filesize_;
    }
}
